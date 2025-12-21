import 'package:flutter/material.dart';
import 'package:flutter_everythings/data_api/repository/api_repo.dart';
import 'package:get/get.dart';

import '../model/api_model.dart';


class PostController extends GetxController{

  var posts = <PostModel>[].obs;

  Future<List<PostModel>> allPost()async{
    try{
      final myPostList = await PostsRepository().getProduct();
      print(myPostList);
      return posts.value = myPostList;
    } catch(e){

      print(e);
      throw Exception('Something went wrong');
    }
  }
}