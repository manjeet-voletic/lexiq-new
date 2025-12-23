import 'package:flutter/material.dart';
import 'package:learn_dart/delete_account.dart';
import 'package:learn_dart/plan_billing_page.dart';
import 'package:learn_dart/preferences.dart';
import 'package:learn_dart/profilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const Preferences(),
    );
  }
}

