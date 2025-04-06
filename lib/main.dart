import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(const RadarApp());

class RadarApp extends StatelessWidget {
  const RadarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R.A.D.A.R',
      theme: ThemeData(
        primaryColor: const Color(0xFF1A73E8),
      ),
      home: const LoginScreen(), // Set login as first screen
    );
  }
}