package com.example.app_server.report.reportlab;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;

import java.io.File;
import java.io.IOException;

@RestController
public class PdfController {

    @PostMapping("/fill-pdf")
    public void fillPdf(@RequestBody UserData userData) {
        try {
            // Load PDF template
            PDDocument document = PDDocument.load(new File("src/main/resources/Health Panel.pdf"));

            // Access the second page of the PDF
            PDPage page = document.getPage(1);

            // Create content stream to write text
            PDPageContentStream contentStream = new PDPageContentStream(document, page, PDPageContentStream.AppendMode.APPEND, true);

            // Set font and position to write data
            contentStream.setFont(PDType1Font.HELVETICA, 12);
            contentStream.beginText();
            contentStream.newLineAtOffset(100, 700);

            // Fill the PDF with user data
            contentStream.showText("NAME: " + userData.getName());
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("GENDER: " + userData.getGender());
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("BIRTH DATE: " + userData.getBirthDate());
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("SAMPLE CODE: " + userData.getSampleCode());
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("SAMPLE/DATA DATE: " + userData.getSampleDataDate());
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("REPORT DATE: " + userData.getReportDate());
// Add more fields as needed


            contentStream.endText();
            contentStream.close();

            // Save filled PDF
            File outputFile = new File("C:/Users/melbi/OneDrive/Desktop/filled-pdf.pdf");
            document.save(outputFile);
            document.close();

            System.out.println("Filled PDF saved successfully to: " + outputFile.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
            // Handle the exception or return an error response
        }
    }
}
