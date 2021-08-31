// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_auth/main.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
  testWidgets("Flutter Widget Test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    // await tester.pump();
    // await tester.pumpWidget(LoginScreen());
    // var sizedBox = find.byType(SizedBox);
    // expect(sizedBox, findsNWidgets(3));
    // var text = find.byType(Text);
    // expect(text, findsNWidgets(3));
    // var column = find.byType(Column);
    // expect(column, findsOneWidget);
    var welcomeScaffold = Key("welcomeScaffold");
    var welcomeScaffoldkey = find.byKey(welcomeScaffold);
    expect(welcomeScaffoldkey, findsOneWidget);

    var welcomeColumn = Key("welcomeColumn");
    var welcomeColumnKey = find.byKey(welcomeColumn);
    expect(welcomeColumnKey, findsOneWidget);

    var welcomeText = Key("welcomeText");
    var welcomeTextkey = find.byKey(welcomeText);
    expect(welcomeTextkey, findsOneWidget);

    // var loginScaffold = Key("loginScaffold");
    // var loginScaffoldkey = find.byKey(loginScaffold);
    // expect(loginScaffoldkey, findsOneWidget);
  });
}
