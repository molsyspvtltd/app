package com.example.app_server.UserAccountCreation;

import com.example.app_server.TwilioConfig;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Random;

@Service
public class AccountService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LoginStatusRepository loginStatusRepository;

    @Autowired
    private TwilioConfig twilioConfig;

    public User createAccount(String phoneNumber) {
        User existingUser = userRepository.findBySimilarPhoneNumber(phoneNumber);
        if (existingUser != null) {
            throw new IllegalArgumentException("Phone number is already in use.");
        }

        User user = new User();
        user.setPhoneNumber(phoneNumber);
        user.setVerificationCode(generateVerificationCode());
        user.setVerified(false);
        sendSms(phoneNumber, user.getVerificationCode());
        return userRepository.save(user);
    }

    public boolean verifyAccount(String phoneNumber, String verificationCode) {
        User user = userRepository.findByPhoneNumberAndVerificationCode(phoneNumber, verificationCode);
        if (user != null) {
            user.setVerified(true);
            userRepository.save(user);
            return true;
        }
        return false;
    }


    public User completeProfile(String phoneNumber, String fullName, LocalDate dob, String gender, String email, String age) {
        User user = userRepository.findByPhoneNumber(phoneNumber);
        if (user != null) {
            user.setFullName(fullName);
            user.setDateOfBirth(dob);
            user.setGender(gender);
            user.setEmail(email);
            user.setAge(age); // Changed to set age as String
            user.setVerified(true); // or however you set the verified status
            userRepository.save(user);
        }
        return user;
    }

    public boolean sendOtp(String phoneNumber) {
        User user = userRepository.findByPhoneNumber(phoneNumber);
        if (user != null) {
            String otp = generateVerificationCode();
            user.setVerificationCode(otp);
            userRepository.save(user);
            sendSms(phoneNumber, otp);
            return true;
        }
        return false;
    }

//    public boolean verifyOtp(String phoneNumber, String otp) {
//        User user = userRepository.findByPhoneNumberAndVerificationCode(phoneNumber, otp);
//        if (user != null) {
//            createLoginStatus(user, true);
//            return true;
//        }
//        return false;
//    }

    public User verifyOtp(String phoneNumber, String otp) {
        User user = userRepository.findByPhoneNumberAndVerificationCode(phoneNumber, otp);
        if (user != null) {
            createLoginStatus(user, true);
            return user;
        }
        return null;
    }

    private void createLoginStatus(User user, boolean isLoggedIn) {
        LoginStatus loginStatus = new LoginStatus();
        loginStatus.setPhoneNumber(user.getPhoneNumber());
        loginStatus.setLoggedIn(isLoggedIn);
        loginStatusRepository.save(loginStatus);
    }

    private String generateVerificationCode() {
        Random random = new Random();
        return String.format("%06d", random.nextInt(1000000));
    }

    private void sendSms(String toPhoneNumber, String verificationCode) {
        Message.creator(new PhoneNumber(toPhoneNumber), new PhoneNumber(twilioConfig.getFromPhoneNumber()),
                "Your verification code is: " + verificationCode).create();
    }
    public boolean logout(String phoneNumber) {
        List<LoginStatus> loginStatusList = loginStatusRepository.findByPhoneNumber(phoneNumber);
        if (!loginStatusList.isEmpty()) {
            for (LoginStatus loginStatus : loginStatusList) {
                loginStatusRepository.delete(loginStatus);
            }
            return true;
        }
        return false;
    }
}


