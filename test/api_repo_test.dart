
import 'package:flutter_everythings/data_api/model/api_model.dart';
import 'package:flutter_everythings/data_api/repository/api_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

late PostsRepository repository;
setUp((){
  repository =PostsRepository();
});
  group("Api repository Test", (){
    group("check if got product well  or not", (){
      test("check if i got 200 well product", () async{

        //arrange
        //act
        final posts = await repository.getProduct();
        //assert
expect(posts, isA<List<PostModel>>());
// expect(posts, isA<PostModel>()); this for to get object of model
      });
    });
  });

}