import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  final String loginUrl = 'https://mediadwi.com/api/latihan/login';

  Future<void> login(String username, String password) async {
    try {
      // Kirim data ke API login
      var response = await http.post(
        Uri.parse(loginUrl),
        body: {
          'username': username,
          'password': password,
        },
      );

      // Cek status response
      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        if (data['status'] == true) {
          // Login berhasil, arahkan ke Bottom Navigation Bar
          Get.offNamed('/home');
        } else {
          // Tampilkan pesan error jika login gagal
          Get.snackbar(
            'Login Failed',
            data['message'] ?? 'Invalid credentials',
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        // Tampilkan pesan error jika server bermasalah
        Get.snackbar(
          'Server Error',
          'Unable to connect to server',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      // Tampilkan pesan error jika ada masalah saat koneksi
      Get.snackbar(
        'Error',
        'An unexpected error occurred',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
