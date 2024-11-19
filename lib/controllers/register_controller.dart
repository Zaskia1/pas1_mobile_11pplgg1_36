import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  Future<void> register(String username, String password, String fullName, String email) async {
    final url = Uri.parse('https://mediadwi.com/api/latihan/register-user');
    final response = await http.post(url, body: {
      'username': username,
      'password': password,
      'full_name': fullName,
      'email': email,
    });

    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: 'Registrasi Berhasil, Silakan Login!');
      Get.toNamed('/login');
    } else {
      Fluttertoast.showToast(msg: 'Registrasi Gagal: ${response.body}');
    }
  }
}
