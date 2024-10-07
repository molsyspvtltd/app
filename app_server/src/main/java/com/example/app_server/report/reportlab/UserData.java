package com.example.app_server.report.reportlab;

public class UserData {
    private String name;
    private String gender;
    private String birthDate;
    private String sampleCode;
    private String sampleDataDate;
    private String reportDate;

    // Getter and setter methods for each field

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getSampleCode() {
        return sampleCode;
    }

    public void setSampleCode(String sampleCode) {
        this.sampleCode = sampleCode;
    }

    public String getSampleDataDate() {
        return sampleDataDate;
    }

    public void setSampleDataDate(String sampleDataDate) {
        this.sampleDataDate = sampleDataDate;
    }

    public String getReportDate() {
        return reportDate;
    }

    public void setReportDate(String reportDate) {
        this.reportDate = reportDate;
    }
}
