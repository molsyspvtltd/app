import 'package:flutter/material.dart';

class DnaNotification {
  final String title;
  final String date;
  bool seen;

  DnaNotification({
    required this.title,
    required this.date,
    this.seen = false,
  });
}

// Mock fetching notifications for non-web platforms
Future<List<DnaNotification>> fetchNotifications() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate network delay

  return [
    DnaNotification(title: 'Your Report arrived', date: 'Mar 8, 2024'),
    DnaNotification(title: 'Check-in evaluated', date: 'Mar 8, 2024'),
    DnaNotification(title: 'New Event added to your calendar', date: 'Mar 8, 2024'),
    DnaNotification(title: 'Profile Modified', date: 'Mar 8, 2024'),
    DnaNotification(title: 'New Mesage', date: 'Mar 8, 2024'),
    DnaNotification(title: 'Old Mesage', date: 'Mar 8, 2024'),
  ];
}
