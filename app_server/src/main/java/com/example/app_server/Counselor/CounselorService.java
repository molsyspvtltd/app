package com.example.app_server.Counselor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CounselorService {
    @Autowired
    private CounselorRepository counselorRepository;

    public List<Counselor> getAllCounselors() {
        return counselorRepository.findAll();
    }

    public Counselor saveCounselor(Counselor counselor) {
        return counselorRepository.save(counselor);
    }

    public Counselor getCounselorByCounselorId(String counselorId) {
        return counselorRepository.findByCounselorId(counselorId);
    }

    public Optional<Counselor> getCounselorById(Long id) {
        return counselorRepository.findById(id);
    }

    public String updateCounselor(String counselorId, Counselor updatedCounselor) {
        Counselor existingCounselor = counselorRepository.findByCounselorId(counselorId);
        if (existingCounselor != null) {
            existingCounselor.setCounselorName(updatedCounselor.getCounselorName());
            existingCounselor.setEmail(updatedCounselor.getEmail());
            existingCounselor.setPhoneNumber(updatedCounselor.getPhoneNumber());
            existingCounselor.setPlace(updatedCounselor.getPlace());
            counselorRepository.save(existingCounselor);
            return "Counselor updated successfully";
        } else {
            return "Counselor not found";
        }
    }

    public String deleteCounselor(String counselorId) {
        Counselor counselor = counselorRepository.findByCounselorId(counselorId);
        if (counselor != null) {
            counselorRepository.delete(counselor);
            return "Counselor deleted successfully";
        } else {
            return "Counselor not found";
        }
    }
}
