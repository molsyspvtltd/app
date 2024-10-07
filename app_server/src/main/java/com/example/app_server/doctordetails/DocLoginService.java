package com.example.app_server.doctordetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class DocLoginService {

    @Autowired
    private DoctorRepository doctorRepository;

    @Autowired
    private DocLoginSessionRepository docloginSessionRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public boolean authenticateDoctor(DocLoginRequest docloginRequest) {
        Doctor doctor = doctorRepository.findByDoctorId(docloginRequest.getDoctorId());
        if (doctor != null && passwordEncoder.matches(docloginRequest.getPassword(), doctor.getPassword())) {
            // Create login session
            DocLoginSession docloginSession = new DocLoginSession();
            docloginSession.setDoctor(doctor);
            docloginSession.setLoginTime(LocalDateTime.now());
            docloginSessionRepository.save(docloginSession);
            return true;
        }
        return false;
    }


    public void logoutDoctor(Long doctorId) {
        Doctor doctor = doctorRepository.findById(doctorId).orElse(null);
        if (doctor != null) {
            // Find the active login session and update logout time
            DocLoginSession docloginSession = docloginSessionRepository.findActiveSessionByDoctor(doctor);
            if (docloginSession != null) {
                docloginSession.setLogoutTime(LocalDateTime.now());
                docloginSessionRepository.save(docloginSession);
            }
        }
    }
}
