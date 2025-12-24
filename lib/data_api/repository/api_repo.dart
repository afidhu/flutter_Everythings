


import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../model/api_model.dart';

class PostsRepository{

  var postInstance = Hive.box('postBox'); //Open a box
Future<List<PostModel>> getProduct() async{
  try{
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if(response.statusCode==200){
      List<dynamic> jsonData = jsonDecode(response.body);
      List<PostModel> postList =jsonData.map((e) => PostModel.fromJson(e)).toList();
      postInstance.addAll(  postList.map((e) => e.toJson()).toList());
      print("postList:$postList");
      return postList;
    }
    else{
      throw Exception('Something went wrong');
    }


  }catch(e){
    print(e);
throw Exception("internal error :$e");


  }
}
}