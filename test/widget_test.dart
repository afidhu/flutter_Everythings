// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_everythings/controller/workersController.dart';
import 'package:flutter_everythings/views/home.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_everythings/main.dart';
import 'package:get/get.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
  group("home screen", () {

    //Those are test widget
      testWidgets('Screen basics behavior', (tester) async {
        await tester.pumpWidget(
          GetMaterialApp(home: const HomeScreen()),
        );

        //NOT (expect) For iteration widget inside
        expect(find.byType(ListView), findsOneWidget);
        //
        // final button = find.byType(MaterialButton).first;
        // await tester.ensureVisible(button);
        // await tester.tap(button);
        // await tester.pumpAndSettle();
      });
        //Test Text
        // final text =find.byType(Text).first;
        // await tester.ensureVisible(text);
        // expect(text, findsOneWidget);



      // testWidgets('Texts(word) behavior', (tester) async {
      //   await tester.pumpWidget(
      //     GetMaterialApp(home: const HomeScreen()),
      //   );
      //   // final textMessage = find.text('workers');
      //   // await tester.ensureVisible(textMessage);
      //   // await tester.pumpAndSettle();
      //   // expect(textMessage, findsOneWidget);
      //
      // });


      //   testWidgets('SizeBox basics behavior', (tester) async {
      //     await tester.pumpWidget(
      //       GetMaterialApp(home: const HomeScreen()),
      //     );
      //
      //     final sizebox = find.byType(SizedBox).first;
      //   await tester.ensureVisible(sizebox);
      //   await tester.pumpAndSettle();
      //   expect(sizebox, findsOneWidget);
      //
      // });


      /////////////From Basics

      //Test for Initial
    //   test("given test count when it call by default is 0", (){
    //
    //     //arrange
    //     MyIncrementControllerWorker controllerWorker =Get.put(MyIncrementControllerWorker());
    //
    //     //act
    //     final count =controllerWorker.count.value;
    //     //Assert
    //     expect(count, 0);
    //   });
    //
    //
    //   ///////When increment
    // test('Given test count is 1 WHEN INCREMENTS',(){
    //   //arrange
    //   MyIncrementControllerWorker controllerWorker =Get.put(MyIncrementControllerWorker());
    //
    //   //act
    //   final count =controllerWorker.count.value;
    //   controllerWorker.increments();
    //
    //   //Assert
    //   expect(count+1, 1);
    //
    // });

  });

//////////////////////////////THIS IS UNIT TEST(Manual test)\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    //HERE I GROUPED

  
  /////////////////////////////////////TESTING STAGES\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  //pretest
  setUp(()=>null);
  setUpAll(()=>null);
///\\\\\\\\\NB:::: setUp VS setUpAll
  //setup called bf every test
  //setUpAll is called bf all tests

  //Diagram\\\\
  //setup->test->setup->test->setup->test
  //setUpAll->test->test->test->test->test

  late MyIncrementControllerWorker controllerWorker ;
  setUp((){
    controllerWorker =MyIncrementControllerWorker();
  });

  //Testing
    group('Counter app', (){
      // MyIncrementControllerWorker controllerWorker=MyIncrementControllerWorker(); this as setUpAll()

      // final count =controllerWorker.count.value;

      test("given test count when it call by default is 0", (){

        //arrange
        // MyIncrementControllerWorker controllerWorker =MyIncrementControllerWorker();

        //act
        final count =controllerWorker.count.value;
        //Assert
        expect(count, 0);
      });

      ///////When increment
      test('Given test count is 1 when increment',(){
        //arrange
        // MyIncrementControllerWorker controllerWorker=MyIncrementControllerWorker();

        //act
        controllerWorker.increments(); //Call increment f()
        final count =controllerWorker.count.value;
        //Assert
        expect(count, 1);

      });

      test('Decrement when call decrement f() Expect -1', (){
        // MyIncrementControllerWorker controllerWorker =MyIncrementControllerWorker();

        controllerWorker.decrements();
        final count =controllerWorker.count.value;
        expect(count, -1);
      });

    });

//PostTest
  tearDown(()=>null);
  tearDownAll(()=>null);
  //THIS OPPOSITE OF PRETEST

  ///\\\\\\\\\NB:::: tearDown VS tearDownAll
  //setup called after every test
  //tearDownAll is called after all tests

  //Diagram\\\\
  //test->tearDown->test->tearDown->test->tearDown
  //test->test->test->test->test->tearDownAll

}
