// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
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

      testWidgets('Texts(word) behavior', (tester) async {
        await tester.pumpWidget(
          GetMaterialApp(home: const HomeScreen()),
        );
        // final textMessage = find.text('workers');
        // await tester.ensureVisible(textMessage);
        // await tester.pumpAndSettle();
        // expect(textMessage, findsOneWidget);

      });
        testWidgets('SizeBox basics behavior', (tester) async {
          await tester.pumpWidget(
            GetMaterialApp(home: const HomeScreen()),
          );

          final sizebox = find.byType(SizedBox).first;
        await tester.ensureVisible(sizebox);
        await tester.pumpAndSettle();
        expect(sizebox, findsOneWidget);

      });




    });


}
