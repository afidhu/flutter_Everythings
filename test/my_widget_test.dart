
import 'package:flutter/material.dart';
import 'package:flutter_everythings/tutorials/tu1.dart';
import 'package:flutter_everythings/views/Leassons/getx_router.dart';
import 'package:flutter_everythings/views/Leassons/workers.dart';
import 'package:flutter_everythings/views/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

/////////////////////THIS IS WIDGET TEST\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

void main(){

  testWidgets('given text  when initial expect text', (WidgetTester tester) async{
  await  tester.pumpWidget(  GetMaterialApp(
      home: HomeScreen(),
    ));

    final texFinder1 =  find.text('Router');
    expect(texFinder1, findsOneWidget);  //This means when finds is found in single widget only


    final texFinder3 = find.text('worker');
    expect(texFinder3, findsNothing);  //This means when finds doesn't  found in any widget

    //     final texFinder4 = find.text('dat');
    // expect(texFinder4, findsNWidgets(2));  //This means when finds is found in many widget like 2etc



    // final btn = find.byType(MaterialButton).first;
    final btn = find.byKey(Key('GetxRouter1'));
await    tester.tap(btn);
  await tester.pumpAndSettle(); //rebuild and This mean when click navigate to
  expect(find.byType(GetxRouter1), findsOneWidget);




  });

}