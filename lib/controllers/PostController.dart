// controllers/product_controller.dart

import 'package:pas1_mobile_11pplgg1_36/services/ApiService.dart';
import 'package:pas1_mobile_11pplgg1_36/models/PostModel.dart'; // Pastikan ini sesuai dengan nama file model
import 'package:get/get.dart';

class Postcontroller extends GetxController {
  var isLoading = true.obs;
  var postList = <PostModel>[].obs; // Menggunakan ProductModel di sini

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var posts = await ApiService().fetchPosts();
      postList.assignAll(posts);
    } finally {
      isLoading(false);
    }
  }
}
