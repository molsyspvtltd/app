import 'package:flutter/material.dart';

import '../widgets/user_reports/doctor_prescription_widget.dart';

class Prescription {
  final String title;
  final String description;
  final String doctorName;
  final String date;
  final String imageUrl;

  Prescription({
    required this.title,
    required this.description,
    required this.doctorName,
    required this.date,
    required this.imageUrl,
  });
}

final List<Prescription> prescriptions = [
  Prescription(
    title: 'Prescription 1',
    description: 'At the initial consultation on 12/01/2024, Anu received their first prescription...',
    doctorName: 'Dr. John Doe',
    date: '12/01/2024',
    imageUrl: 'assets/images/profilescreen.jpeg',
  ),
  Prescription(
    title: 'Prescription 2',
    description: 'At the secondary consultation on 12/02/2024, Anu received their second prescription...',
    doctorName: 'Dr. John Doe',
    date: '12/02/2024',
    imageUrl: 'assets/images/profilescreen.jpeg',
  ),
  // Add more prescriptions here...
];

class PrescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prescriptions'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DoctorPrescriptionWidget(prescriptions: prescriptions),
            ));
          },
          child: Text('View Prescriptions'),
        ),
      ),
    );
  }
}
