import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';


import '../model/api_model.dart';
import '../repository/api_repo.dart';


class PostController extends GetxController{

  final  postsRepository =PostsRepository();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // hiveFunction();
  }

  // var postInstance = Hive.box('postBox'); //Open a box
  // Future<void> hiveFunction()async{
  //  // await Hive.openBox('postBox'); //Create a box,(can create at main.dart is fine)
  //
  //   // print("postInstance:${postInstance.path}");
  //   print("box; ${postInstance.name}");
  //   postInstance.put("title", "wali");
  //   print(postInstance.get('title'));
  //   postInstance.put('languages', ['flutter', 'dart', 'java', 'python']);
  //   postInstance.put('users', {"name":"juma", "age":30});
  //
  //   // print(postInstance.getAt(1));
  //   print(postInstance.get("users"));
  //   print(postInstance.get('users')['name']);
  //   print(postInstance.get('languages'));
  //   var langList = postInstance.get('languages');
  //   print(langList[0]);
  //   print(langList.length);
  //   print(postInstance.length);
  //   print(postInstance.keys);
  //
  //
  //   //Add map/object to box
  //
  //   var myUsers = {
  //     "name":'juma',
  //     "age":30,
  //     "languages":['flutter', 'dart', 'java', 'python'],
  //   };
  //
  //   Map<String, dynamic> _myUsers = Map.from(myUsers);
  //   postInstance.add(_myUsers);
  //   print(postInstance.getAt(2));
  //   print(postInstance.values.length );
  //
  // }

  var posts = <PostModel>[].obs;
  var postInstance = Hive.box('postBox'); //Open a box


  Future<List<PostModel>> allPost() async {
    // 1️⃣ Read cached data FIRST
    if (postInstance.isNotEmpty) {
      final cached = postInstance.values.toList();

      posts.assignAll(
        cached
            .map((e) => PostModel.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );
    }
    try {
      final freshPosts = await postsRepository.getProduct();
      posts.assignAll(freshPosts);
      return freshPosts;
    } catch (e) {
      print("Offline mode, using Hive cache");
      return posts.toList();
    }
  }

}