import 'package:covaid_19_tracking_app/View/covaid_countries.dart';
import 'package:covaid_19_tracking_app/View/splashScreen.dart';
import 'package:covaid_19_tracking_app/View/world_states.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const SplashScreen(),
    );
  }
}