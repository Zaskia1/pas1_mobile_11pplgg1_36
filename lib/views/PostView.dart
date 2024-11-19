import 'package:pas1_mobile_11pplgg1_36/controllers/PostController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostView extends StatelessWidget {
  final Postcontroller postController = Get.put(Postcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: postController.postList.length,
          itemBuilder: (context, index) {
            final post = postController.postList[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Menampilkan strTeam
                    Text(
                      post.strTeam ?? 'Unknown Team',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),

                    // Menampilkan strTeamAlternate jika tersedia
                    if (post.strTeamAlternate != null)
                      Text(
                        'Alternate: ${post.strTeamAlternate}',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    SizedBox(height: 8),

                    // Menampilkan strDescriptionEN
                    Text(
                      post.strDescriptionEN ?? 'No description available',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    SizedBox(height: 8),

                    // Menampilkan strLogo dalam bentuk gambar jika ada
                    if (post.strLogo != null && post.strLogo!.isNotEmpty)
                      Image.network(
                        post.strLogo!,
                        width: 100, // Sesuaikan ukuran logo
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    SizedBox(height: 8),

                    // Menampilkan idTeam
                    Text(
                      'Team ID: ${post.idTeam}',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
