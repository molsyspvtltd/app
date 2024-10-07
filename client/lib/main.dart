import 'package:dnalyst/services/Prescription.dart';
import 'package:dnalyst/services/hive_cart.dart';
import 'package:flutter/material.dart';
import 'package:dnalyst/widgets/splashscreen_widget.dart';
import 'package:dnalyst/widgets/welcome_screen_widget.dart';
import 'package:dnalyst/widgets/createaccountscreen_widget.dart';
import 'package:dnalyst/widgets/loginscreen_widget.dart';
import 'package:dnalyst/widgets/otpscreen_widget.dart';
import 'package:dnalyst/widgets/otpscreenlogin_widget.dart';
import 'package:dnalyst/widgets/homescreen_widget.dart';
import 'package:dnalyst/widgets/notificationscreen_widget.dart';
import 'package:dnalyst/widgets/profilescreen_widget.dart';
// import 'package:dnalyst/widgets/profilecreation_widget.dart';
import 'package:dnalyst/widgets/help_center_widget.dart';
import 'package:dnalyst/widgets/testand_report_screen_widget.dart';
import 'package:dnalyst/widgets/cart_widget.dart';
import 'package:dnalyst/widgets/makepayment_widget.dart';
import 'package:dnalyst/widgets/success_payment_widget.dart';
import 'package:dnalyst/widgets/receipt_widget.dart';
import 'package:dnalyst/widgets/calendar_widget.dart';
import 'package:dnalyst/widgets/slotbooked_widget.dart';
import 'package:dnalyst/widgets/settingsscreen_widget.dart';
import 'package:dnalyst/widgets/notificationsettings_widget.dart';
import 'package:dnalyst/widgets/womens_fitness_widget.dart';
import 'package:dnalyst/widgets/mens_fitness_widget.dart';
import 'package:dnalyst/widgets/user_reports/report_widget.dart';
import 'package:dnalyst/widgets/report_menu_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/diet_widget.dart';
import 'package:dnalyst/widgets/tracking01_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_counsellor_calendar_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/doctor_widget.dart';
import 'package:dnalyst/widgets/user_reports/doctor_prescription_widget.dart';
import 'package:dnalyst/widgets/products/slim_care_widget.dart';
import 'package:dnalyst/widgets/products/fit_care_widget.dart';
import 'package:dnalyst/widgets/products/fit_carepro_widget.dart';
import 'package:dnalyst/widgets/products/kin_care_widget.dart';
import 'package:dnalyst/widgets/products/her_care_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/nutrition_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/sportsand_fitness_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/lifestyle_conditions_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/digestive_health_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/skinand_hair_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/addiction_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/sleepand_rest_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/allergiesand_sensitivity_widget.dart';
import 'package:dnalyst/widgets/fitcarereport/summary_widget.dart';
import 'package:dnalyst/widgets/products/gut_care_widget.dart';
import 'package:dnalyst/widgets/products/gut_carepro_widget.dart';
import 'package:dnalyst/widgets/intake_form_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_counsellor_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_test_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_doctor_widget.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_dietition_widget.dart';
import 'package:dnalyst/widgets/diet_chart_widget.dart';

import 'package:dnalyst/widgets/food_diet_widget.dart';




//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'dnalyst', // Set your app title
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Customize your theme
//         useMaterial3: true,
//       ),
//       home: const SplashscreenWidget(), // Set your home screen
//       routes: {
//         'WelcomeScreen': (context) => const WelcomeScreenWidget(), // Replace WelcomeScreen with your actual screen widget
//         'CreateaccountscreenWidget': (context) => const CreateaccountscreenWidget(),
//         'LoginscreenWidget': (context) => const LoginscreenWidget(),
//         'OtpscreenWidget': (context) => const OtpscreenWidget(),
//         'OtpscreenloginWidget': (context) => const OtpscreenloginWidget(),
//         'HomescreenWidget': (context) => const HomescreenWidget(),
//         'NotificationscreenWidget': (context) => const NotificationscreenWidget(),
//         'NotificationsettingsWidget': (context) => const NotificationsettingsWidget(),
//         'ProfilescreenWidget': (context) => const ProfilescreenWidget(),
//         // 'ProfilecreationWidget': (context) => const ProfilecreationWidget(),
//         'HelpCenterWidget': (context) => const HelpCenterWidget(),
//         'TestandReportScreenWidget': (context) => const TestandReportScreenWidget(),
//         'CartWidget': (context) => const CartWidget(),
//         'MakepaymentWidget': (context) => const MakepaymentWidget(),
//         'SuccessPaymentWidget': (context) => const SuccessPaymentWidget(),
//         'ReceiptWidget': (context) => const ReceiptWidget(),
//         'CalendarWidget': (context) => const CalendarWidget(),
//         'SlotbookedWidget': (context) => const SlotbookedWidget(),
//         'MensFitnessWidget': (context) => const MensFitnessWidget(),
//         'WomensFitnessWidget': (context) => const WomensFitnessWidget(),
//         'ReportWidget': (context) => const ReportWidget(),
//         'ReportMenuWidget': (context) => const ReportMenuWidget(),
//         'DietWidget': (context) => const DietWidget(),
//         'Tracking01Widget': (context) => const Tracking01Widget(),
//         'SettingsscreenWidget': (context) => const SettingsscreenWidget(),
//         'BookCounsellorWidget': (context) => const BookCounsellorWidget(),
//         'BookDoctorWidget': (context) => const BookDoctorWidget(),
//         'DoctorPrescriptionWidget': (context) => const DoctorPrescriptionWidget(),
//         'DietChartWidget': (context) => const DietChartWidget(),
//         'SlimCareWidget': (context) => const SlimCareWidget(),
//         'FitCareWidget': (context) => const FitCareWidget(),
//         'FitCareproWidget': (context) => const FitCareproWidget(),
//         'KinCareWidget': (context) => const KinCareWidget(),
//         'HerCareWidget': (context) => const HerCareWidget(),
//         'NutritionWidget': (context) => const NutritionWidget(),
//         'SportsandFitnessWidget': (context) => const SportsandFitnessWidget(),
//         'LifestyleConditionsWidget': (context) => const LifestyleConditionsWidget(),
//         'DigestiveHealthWidget': (context) => const DigestiveHealthWidget(),
//         'SkinandHairWidget': (context) => const SkinandHairWidget(),
//         'AddictionWidget': (context) => const AddictionWidget(),
//         'SleepandRestWidget': (context) => const SleepandRestWidget(),
//         'AllergiesandSensitivityWidget': (context) => const AllergiesandSensitivityWidget(),
//         'SummaryWidget': (context) => const SummaryWidget(),
//         'GutCareWidget': (context) => const GutCareWidget(),
//         'GutCareproWidget': (context) => const GutCareproWidget(),
//         'IntakeFormWidget': (context) => IntakeFormWidget(),
//         'BookTestWidget': (context) => BookTestWidget(),
//         'BookDietitionWidget': (context) => BookDietitionWidget(),
//         'DoctorWidget': (context) => DoctorWidget(),
//         'FoodDietWidget': (context) => FoodDietWidget(),
//
//       },
//       debugShowCheckedModeBanner: false, // Hide debug banner
//     );
//   }
// }

//backend code
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:dnalyst/models/intake_form_model.dart';  // Import your model
import 'package:connectivity_plus/connectivity_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(HiveCartAdapter().typeId)) {
    Hive.registerAdapter(HiveCartAdapter());
  }

  // Add a short delay
  await Future.delayed(Duration(seconds: 1));

  var connectivityResult = await Connectivity().checkConnectivity();
  print('Connectivity Result: $connectivityResult');

  if (connectivityResult == ConnectivityResult.none) {
    runApp(NoInternetApp());
  } else {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IntakeFormModel()),
        // Add other providers here if needed
      ],
      child: MaterialApp(
        title: 'dnalyst',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashscreenWidget(),
        routes: {
          'WelcomeScreen': (context) => const WelcomeScreenWidget(),
          'CreateaccountscreenWidget': (context) => const CreateaccountscreenWidget(),
          'LoginscreenWidget': (context) => const LoginscreenWidget(),
          'OtpscreenWidget': (context) => const OtpscreenWidget(),
          'OtpscreenloginWidget': (context) => const OtpscreenloginWidget(),
          'HomescreenWidget': (context) => const HomescreenWidget(),
          'NotificationscreenWidget': (context) => const NotificationscreenWidget(),
          'NotificationsettingsWidget': (context) => const NotificationsettingsWidget(),
          'ProfilescreenWidget': (context) => const ProfilescreenWidget(),
          'HelpCenterWidget': (context) => const HelpCenterWidget(),
          'TestandReportScreenWidget': (context) => const TestandReportScreenWidget(),
          'CartWidget': (context) => const CartWidget(),
          'MakepaymentWidget': (context) => const MakepaymentWidget(),
         // 'SuccessPaymentWidget': (context) => const SuccessPaymentWidget(),
          'ReceiptWidget': (context) => const ReceiptWidget(),
          'CalendarWidget': (context) => const CalendarWidget(),
          // 'SlotbookedWidget': (context) => const SlotbookedWidget(
          //
          // ),
          'MensFitnessWidget': (context) => const MensFitnessWidget(),
          'WomensFitnessWidget': (context) => const WomensFitnessWidget(),
          'ReportWidget': (context) => const ReportWidget(),
          'ReportMenuWidget': (context) => const ReportMenuWidget(),
          'DietWidget': (context) => const DietWidget(),
          'Tracking01Widget': (context) => const Tracking01Widget(),
          'SettingsscreenWidget': (context) => const SettingsscreenWidget(),
          'BookCounsellorCalendarWidget': (context) => const BookCounsellorCalendarWidget(),
          'DoctorWidget': (context) => const DoctorWidget(),
          'DoctorPrescriptionWidget': (context) => DoctorPrescriptionWidget(prescriptions: prescriptions),

          'SlimCareWidget': (context) => const SlimCareWidget(),
          'FitCareWidget': (context) => const FitCareWidget(),
          'FitCareproWidget': (context) => const FitCareproWidget(),
          'KinCareWidget': (context) => const KinCareWidget(),
          'HerCareWidget': (context) => const HerCareWidget(),
          'NutritionWidget': (context) => const NutritionWidget(),
          'SportsandFitnessWidget': (context) => const SportsandFitnessWidget(),
          'LifestyleConditionsWidget': (context) => const LifestyleConditionsWidget(),
          'DigestiveHealthWidget': (context) => const DigestiveHealthWidget(),
          'SkinandHairWidget': (context) => const SkinandHairWidget(),
          'AddictionWidget': (context) => const AddictionWidget(),
          'SleepandRestWidget': (context) => const SleepandRestWidget(),
          'AllergiesandSensitivityWidget': (context) => const AllergiesandSensitivityWidget(),
          'SummaryWidget': (context) => const SummaryWidget(),
          'GutCareWidget': (context) => const GutCareWidget(),
          'GutCareproWidget': (context) => const GutCareproWidget(),
          'IntakeFormWidget': (context) => IntakeFormWidget(
            phoneNumber: ModalRoute.of(context)?.settings.arguments as String,
          ),
          'BookCounsellorWidget': (context) => const BookCounsellorWidget(),
          'BookTestWidget': (context) => const BookTestWidget(),
          'BookDoctorWidget': (context) => const BookDoctorWidget(),
          'BookDietitionWidget': (context) => const BookDietitionWidget(),
          'FoodDiet': (context) => const FoodDietWidget(),
          'DietChartWidget': (context) => const DietChartWidget(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class NoInternetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AlertDialog(
            title: Text("No Internet"),
            content: Text("No internet connection detected. Check your internet connection."),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Future.delayed(Duration.zero, () {
                    SystemNavigator.pop(); // This closes the app
                  });
                },
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
