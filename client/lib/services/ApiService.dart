// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class ApiService {
//   final String baseUrl = 'http://10.0.2.2:8080'; // Using 10.0.2.2 for Android Emulator
//
//   Future<Map<String, dynamic>> createUser(String phoneNumber) async {
//     final url = Uri.parse('$baseUrl/api/account/create');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({'phoneNumber': phoneNumber}),
//     );
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to create user');
//     }
//   }
//
//
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class ApiService {
//   final String baseUrl = 'http://10.0.2.2:8080'; // Update to your backend URL
//
//   Future<Map<String, dynamic>> createUser(String phoneNumber) async {
//     final url = Uri.parse('$baseUrl/api/account/create');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({'phoneNumber': phoneNumber}),
//     );
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to create user');
//     }
//   }
//
//   Future<Map<String, dynamic>> verifyOtp(String phoneNumber, String otp) async {
//     final url = Uri.parse('$baseUrl/api/account/verify');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({
//         'phoneNumber': phoneNumber,
//         'verificationCode': otp
//       }),
//     );
//
//     print('Raw response body: ${response.body}');
//     print('Response status code: ${response.statusCode}');
//     print('Response headers: ${response.headers}');
//
//     if (response.statusCode == 200) {
//       // Check if response body is not empty and can be decoded
//       try {
//         return json.decode(response.body) as Map<String, dynamic>;
//       } catch (e) {
//         throw FormatException('Error parsing JSON: $e');
//       }
//     } else {
//       // Handle server errors or non-200 responses
//       throw Exception('Failed to verify OTP: ${response.body}');
//     }
//   }
//
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import '../models/intake_form_model.dart';
//
// class ApiService {
//   final String baseUrl = 'http://10.0.2.2:8080'; // Update to your backend URL
//
//   Future<Map<String, dynamic>> createUser(String phoneNumber) async {
//     final url = Uri.parse('$baseUrl/api/account/create');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({'phoneNumber': phoneNumber}),
//     );
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to create user');
//     }
//   }
//
//   Future<Map<String, dynamic>> verifyOtp(String phoneNumber, String otp) async {
//     final url = Uri.parse('$baseUrl/api/account/verify');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({
//         'phoneNumber': phoneNumber,
//         'verificationCode': otp
//       }),
//     );
//
//     print('Raw response body: ${response.body}');
//     print('Response status code: ${response.statusCode}');
//     print('Response headers: ${response.headers}');
//
//     if (response.statusCode == 200) {
//       // Check if response body is not empty and can be decoded
//       try {
//         return json.decode(response.body) as Map<String, dynamic>;
//       } catch (e) {
//         throw FormatException('Error parsing JSON: $e');
//       }
//     } else {
//       // Handle server errors or non-200 responses
//       throw Exception('Failed to verify OTP: ${response.body}');
//     }
//   }
//
//
// }
//this code is pe
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/intake_form_model.dart';

class ApiService {
  final String baseUrl = 'http://10.0.2.2:8080'; // Update to your backend URL

  Future<Map<String, dynamic>> createUser(String phoneNumber) async {
    final url = Uri.parse('$baseUrl/api/account/create');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'phoneNumber': phoneNumber}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to create user');
    }
  }

  Future<Map<String, dynamic>> verifyOtp(String phoneNumber, String otp) async {
    final url = Uri.parse('$baseUrl/api/account/verify');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'phoneNumber': phoneNumber,
        'verificationCode': otp
      }),
    );

    print('Raw response body: ${response.body}');
    print('Response status code: ${response.statusCode}');
    print('Response headers: ${response.headers}');

    if (response.statusCode == 200) {
      // Check if response body is not empty and can be decoded
      try {
        return json.decode(response.body) as Map<String, dynamic>;
      } catch (e) {
        throw FormatException('Error parsing JSON: $e');
      }
    } else {
      // Handle server errors or non-200 responses
      throw Exception('Failed to verify OTP: ${response.body}');
    }
  }


  Future<Map<String, dynamic>> requestOtp(String phoneNumber) async {
    final url = Uri.parse('$baseUrl/api/account/userlogin');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'phoneNumber': phoneNumber}),
    );

    // Print debug information
    print('Request URL: ${url}');
    print('Request body: ${json.encode({'phoneNumber': phoneNumber})}');
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      // Check if response body contains the success message
      if (response.body.contains('OTP sent successfully')) {
        return {'status': 'success'};
      } else {
        throw Exception('Unexpected response: ${response.body}');
      }
    } else {
      throw Exception('Failed to request OTP');
    }

  }

  // Future<Map<String, dynamic>> verifyloginOtp(String phoneNumber, String otp) async {
  //   final url = Uri.parse('$baseUrl/api/account/verify-otp');
  //   final response = await http.post(
  //     url,
  //     headers: {'Content-Type': 'application/json'},
  //     body: jsonEncode({'phoneNumber': phoneNumber, 'otp': otp}),
  //   );
  //
  //   print('Request URL: $url');
  //   print('Request body: ${jsonEncode({'phoneNumber': phoneNumber, 'otp': otp})}');
  //   print('Response status code: ${response.statusCode}');
  //   print('Response body: ${response.body}');
  //
  //   if (response.statusCode == 200) {
  //     return {'status': 'success', 'message': response.body};
  //   } else {
  //     final errorMessage = jsonDecode(response.body);
  //     throw Exception('Failed to verify OTP: $errorMessage');
  //   }
  // }



  Future<Map<String, dynamic>> verifyloginOtp(String phoneNumber, String otp) async {
    final url = Uri.parse('$baseUrl/api/account/verify-otp');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'phoneNumber': phoneNumber, 'otp': otp}),
    );

    print('Request URL: $url');
    print('Request body: ${jsonEncode({'phoneNumber': phoneNumber, 'otp': otp})}');
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      // Parse the JSON response
      final responseData = jsonDecode(response.body);

      // Extract the message and user data
      return {
        'status': 'success',
        'message': responseData['message'],
        'user': responseData['user'], // This is a Map<String, dynamic>
      };
    } else {
      final responseData = jsonDecode(response.body);
      return {
        'status': 'error',
        'message': responseData['message'], // The error message
      };
    }
  }

  Future<Map<String, dynamic>> completeProfile({
    required String fullName,
    required String email,
    required int age,
    required String dateOfBirth,
    required String gender,
    required String phoneNumber,
  }) async {
    final url = Uri.parse('$baseUrl/api/account/complete-profile');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'fullName': fullName,
        'email': email,
        'age': age,
        'dateOfBirth': dateOfBirth,
        'gender': gender,
        'phoneNumber': phoneNumber,
      }),
    );

    print('Request URL: $url');
    print('Request body: ${json.encode({
      'fullName': fullName,
      'email': email,
      'age': age,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'phoneNumber': phoneNumber,
    })}');
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to complete profile');
    }
  }

}


