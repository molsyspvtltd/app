package com.example.app_server.Counselor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/counselors")
public class CounselorController {
    @Autowired
    private CounselorService counselorService;

    @GetMapping("/")
    public List<Counselor> getAllCounselors() {
        return counselorService.getAllCounselors();
    }

    @PostMapping("/")
    public ResponseEntity<String> addCounselor(@RequestBody Counselor counselor) {
        counselorService.saveCounselor(counselor);
        return ResponseEntity.ok("Counselor added successfully");
    }

    @GetMapping("/{counselorId}")
    public ResponseEntity<?> getCounselorByCounselorId(@PathVariable String counselorId) {
        Counselor counselor = counselorService.getCounselorByCounselorId(counselorId);
        if (counselor != null) {
            return ResponseEntity.ok(counselor);
        } else {
            return ResponseEntity.status(404).body("Counselor not found");
        }
    }

    @PutMapping("/{counselorId}")
    public ResponseEntity<String> updateCounselor(@PathVariable String counselorId, @RequestBody Counselor updatedCounselor) {
        String result = counselorService.updateCounselor(counselorId, updatedCounselor);
        if (result.equals("Counselor updated successfully")) {
            return ResponseEntity.ok(result);
        } else {
            return ResponseEntity.status(404).body(result);
        }
    }

    @DeleteMapping("/{counselorId}")
    public ResponseEntity<String> deleteCounselor(@PathVariable String counselorId) {
        String result = counselorService.deleteCounselor(counselorId);
        if (result.equals("Counselor deleted successfully")) {
            return ResponseEntity.ok(result);
        } else {
            return ResponseEntity.status(404).body(result);
        }
    }
}
