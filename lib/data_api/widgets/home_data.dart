import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/post_controller.dart';

class HomeData extends StatefulWidget {
  const HomeData({super.key});

  @override
  State<HomeData> createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {
  PostController controller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
          future: controller.allPost(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              return Obx(
                () => ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    var data = controller.posts[index];
                    return ListTile(title: Text(data.title.toString()));
                  },
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
