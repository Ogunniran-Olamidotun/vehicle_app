import 'package:flutter/material.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:vehicle_repair_booking_app/Screens/login_screen.dart';

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
      title: 'Vehicle Repair',
      theme: ThemeData(
        primaryColor: primary
      ),
      home: LoginScreen(),
    ) ;// This trailing comma makes auto-formatting nicer for build methods.
    
  }
}
