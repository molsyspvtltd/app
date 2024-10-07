// class DietChart {
//   final String month;
//   final String challengeName;
//   final String dueDate;
//   final String status;
//
//   DietChart({
//     required this.month,
//     required this.challengeName,
//     required this.dueDate,
//     required this.status,
//   });
// }
//
// final List<DietChart> dietCharts = [
//   DietChart(
//     month: 'Month 1',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'In Progress',
//   ),
//   DietChart(
//     month: 'Month 2',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'Locked',
//   ),
//   DietChart(
//     month: 'Month 3',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'Locked',
//   ),
//   DietChart(
//     month: 'Month 4',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'Locked',
//   ),
//   DietChart(
//     month: 'Month 5',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'Locked',
//   ),
//   DietChart(
//     month: 'Month 6',
//     challengeName: 'Clean Eating Challenge',
//     dueDate: 'Tuesday, 10:00am',
//     status: 'Locked',
//   ),
//   // Add other months here...
// ];

class DietChart {
  final String month;
  final String challengeName;
  final String dueDate;
  final String status;

  DietChart({
    required this.month,
    required this.challengeName,
    required this.dueDate,
    required this.status,
  });
}

final List<DietChart> dietCharts = [
  DietChart(
    month: 'Month 1',
    challengeName: 'Clean Eating Challenge',
    dueDate: 'Tuesday, 10:00am',
    status: 'In Progress',
  ),
  DietChart(
    month: 'Month 2',
    challengeName: 'Plant-Based Power',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 3',
    challengeName: 'Paleo Diet Plan',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 4',
    challengeName: 'Intermittent Fasting Plan',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 5',
    challengeName: 'Keto Kickstart',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 6',
    challengeName: 'Whole 30 Reset',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  // Add other months here...
];
