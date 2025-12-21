


import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_model.dart';

class PostsRepository{

Future<List<PostModel>> getProduct() async{
  try{
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if(response.statusCode==200){
      List<dynamic> data = jsonDecode(response.body);
      List<PostModel> postList =data.map((e) => PostModel.fromJson(e)).toList();
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