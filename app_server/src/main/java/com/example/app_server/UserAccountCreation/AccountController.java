//
//
//package com.example.app_server.UserAccountCreation;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//
//import java.time.LocalDate;
//
//@RestController
//@RequestMapping("/api/account")
//public class AccountController {
//
//    @Autowired
//    private AccountService accountService;
//
//    @PostMapping("/create")
//    public ResponseEntity<User> createAccount(@RequestBody UserCreationRequest request) {
//        User user = accountService.createAccount(request.getPhoneNumber(), request.getPassword());
//        return ResponseEntity.ok(user);
//    }
//
//    @PostMapping("/verify")
//    public ResponseEntity<String> verifyAccount(@RequestBody VerifyAccountRequest request) {
//        boolean verified = accountService.verifyAccount(request.getPhoneNumber(), request.getVerificationCode());
//        if (verified) {
//            return ResponseEntity.ok("Account verified successfully.");
//        } else {
//            return ResponseEntity.status(400).body("Verification failed.");
//        }
//    }
//
//    @PostMapping("/complete-profile")
//    public ResponseEntity<User> completeProfile(@RequestBody CompleteProfileRequest request) {
//        LocalDate dob = LocalDate.parse(request.getDateOfBirth());
//        User user = accountService.completeProfile(request.getPhoneNumber(), request.getName(), dob, request.getSex(), request.getEmail(), request.getLocation(), request.getWeight(), request.getHeight());
//        if (user != null) {
//            return ResponseEntity.ok(user);
//        } else {
//            return ResponseEntity.status(400).body(null);
//        }
//    }
//
//    @PostMapping("/request-otp")
//    public ResponseEntity<String> requestOtp(@RequestBody OtpRequest request) {
//        boolean otpSent = accountService.sendOtp(request.getPhoneNumber());
//        if (otpSent) {
//            return ResponseEntity.ok("OTP sent successfully.");
//        } else {
//            return ResponseEntity.status(400).body("Failed to send OTP.");
//        }
//    }
//
//    @PostMapping("/verify-otp")
//    public ResponseEntity<String> verifyOtp(@RequestBody OtpRequest request) {
//        boolean verified = accountService.verifyOtp(request.getPhoneNumber(), request.getOtp());
//        if (verified) {
//            return ResponseEntity.ok("Login successful.");
//        } else {
//            return ResponseEntity.status(400).body("Invalid OTP.");
//        }
//    }
//}
//
//
//class OtpRequest {
//    private String phoneNumber;
//    private String otp;
//
//    // Getters and Setters
//
//    public String getPhoneNumber() {
//        return phoneNumber;
//    }
//
//    public void setPhoneNumber(String phoneNumber) {
//        this.phoneNumber = phoneNumber;
//    }
//
//    public String getOtp() {
//        return otp;
//    }
//
//    public void setOtp(String otp) {
//        this.otp = otp;
//    }
//}
//
//class UserCreationRequest {
//    private String phoneNumber;
//    private String password;
//
//    // Getters and Setters
//
//    public String getPhoneNumber() {
//        return phoneNumber;
//    }
//
//    public void setPhoneNumber(String phoneNumber) {
//        this.phoneNumber = phoneNumber;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//}
//
//class VerifyAccountRequest {
//    private String phoneNumber;
//    private String verificationCode;
//
//    // Getters and Setters
//
//    public String getPhoneNumber() {
//        return phoneNumber;
//    }
//
//    public void setPhoneNumber(String phoneNumber) {
//        this.phoneNumber = phoneNumber;
//    }
//
//    public String getVerificationCode() {
//        return verificationCode;
//    }
//
//    public void setVerificationCode(String verificationCode) {
//        this.verificationCode = verificationCode;
//    }
//}
//
//class CompleteProfileRequest {
//    private String phoneNumber;
//    private String name;
//    private String dateOfBirth;
//    private String sex;
//    private String email;
//    private String location;
//    private double weight;
//    private double height;
//
//    // Getters and Setters
//
//    public String getPhoneNumber() {
//        return phoneNumber;
//    }
//
//    public void setPhoneNumber(String phoneNumber) {
//        this.phoneNumber = phoneNumber;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getDateOfBirth() {
//        return dateOfBirth;
//    }
//
//    public void setDateOfBirth(String dateOfBirth) {
//        this.dateOfBirth = dateOfBirth;
//    }
//
//    public String getSex() {
//        return sex;
//    }
//
//    public void setSex(String sex) {
//        this.sex = sex;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getLocation() {
//        return location;
//    }
//
//    public void setLocation(String location) {
//        this.location = location;
//    }
//
//    public double getWeight() {
//        return weight;
//    }
//
//    public void setWeight(double weight) {
//        this.weight = weight;
//    }
//
//    public double getHeight() {
//        return height;
//    }
//
//    public void setHeight(double height) {
//        this.height = height;
//    }
//}
//

package com.example.app_server.UserAccountCreation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @PostMapping("/create")
    public ResponseEntity<User> createAccount(@RequestBody UserCreationRequest request) {
        User user = accountService.createAccount(request.getPhoneNumber());
        return ResponseEntity.ok(user);
    }

    @PostMapping("/verify")
    public ResponseEntity<Map<String, Object>> verifyAccount(@RequestBody VerifyAccountRequest request) {
        boolean verified = accountService.verifyAccount(request.getPhoneNumber(), request.getVerificationCode());

        Map<String, Object> response = new HashMap<>();
        if (verified) {
            response.put("message", "Account verified successfully.");
            response.put("status", "success");
            return ResponseEntity.ok(response);
        } else {
            response.put("message", "Verification failed.");
            response.put("status", "error");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
        }
    }


    @PostMapping("/complete-profile")
    public ResponseEntity<Map<String, Object>> completeProfile(@RequestBody CompleteProfileRequest request) {
        Map<String, Object> response = new HashMap<>();
        try {
            LocalDate dob = LocalDate.parse(request.getDateOfBirth());
            User user = accountService.completeProfile(
                    request.getPhoneNumber(),
                    request.getFullName(),
                    dob,
                    request.getGender(),
                    request.getEmail(),
                    request.getAge() // Pass age as String
            );

            if (user != null) {
                response.put("message", "Profile completed successfully.");
                response.put("status", "success");
                response.put("user", user); // Include user details if needed
                return ResponseEntity.ok(response);
            } else {
                response.put("message", "Failed to complete profile.");
                response.put("status", "error");
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
            }
        } catch (Exception e) {
            response.put("message", "An error occurred: " + e.getMessage());
            response.put("status", "error");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
        }
    }


    @PostMapping("/userlogin")
    public ResponseEntity<String> requestOtp(@RequestBody OtpRequest request) {
        boolean otpSent = accountService.sendOtp(request.getPhoneNumber());
        if (otpSent) {
            return ResponseEntity.ok("OTP sent successfully.");
        } else {
            return ResponseEntity.status(400).body("Failed to send OTP.");
        }
    }

//    @PostMapping("/verify-otp")
//    public ResponseEntity<String> verifyOtp(@RequestBody OtpRequest request) {
//        boolean verified = accountService.verifyOtp(request.getPhoneNumber(), request.getOtp());
//        if (verified) {
//            return ResponseEntity.ok("Login successful.");
//        } else {
//            return ResponseEntity.status(400).body("Invalid OTP.");
//        }
//    }

    @PostMapping("/verify-otp")
    public ResponseEntity<Map<String, Object>> verifyOtp(@RequestBody OtpRequest request) {
        User user = accountService.verifyOtp(request.getPhoneNumber(), request.getOtp());
        Map<String, Object> response = new HashMap<>();

        if (user.isVerified()) {
            response.put("message", "Login successful.");
            response.put("id", user.getId()); // Assuming User object can be serialized to JSON
            response.put("status", "success");
            return ResponseEntity.ok(response);
        } else {
            response.put("message", "Invalid OTP.");
            return ResponseEntity.status(400).body(response);
        }
    }


    @PostMapping("/logout")
    public ResponseEntity<String> logout(@RequestBody LogoutRequest request) {
        boolean loggedOut = accountService.logout(request.getPhoneNumber());
        if (loggedOut) {
            return ResponseEntity.ok("Logged out successfully.");
        } else {
            return ResponseEntity.status(400).body("Failed to log out.");
        }
    }
}

class OtpRequest {
    private String phoneNumber;
    private String otp;

    // Getters and Setters

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }
}

class LogoutRequest {
    private String phoneNumber;

    // Getters and Setters

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}

class UserCreationRequest {
    private String phoneNumber;


    // Getters and Setters

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}

class VerifyAccountRequest {
    private String phoneNumber;
    private String verificationCode;

    // Getters and Setters

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getVerificationCode() {
        return verificationCode;
    }

    public void setVerificationCode(String verificationCode) {
        this.verificationCode = verificationCode;
    }
}

class CompleteProfileRequest {
    private String phoneNumber;
    private String fullName;
    private String dateOfBirth;
    private String gender;
    private String email;
    private String age;

    // Getters and Setters

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }


}