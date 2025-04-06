import 'package:flutter/material.dart';
import '../widgets/social_login_button.dart';

void main() => runApp(const RadarApp());

class RadarApp extends StatelessWidget {
  const RadarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R.A.D.A.R',
      theme: ThemeData(
        primaryColor: const Color(0xFF1A73E8),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF34A853),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Center(
                child: Column(
                  children: [
                    Text(
                      'R.A.D.A.R',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Text(
                      'Rapid Action for Disaster Aid Resource',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Welcome Text
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Phone Number Input
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixText: '+63 ',
                  labelText: 'Enter your mobile number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    // Add phone number validation and OTP logic
                  },
                  child: const Text('CONTINUE'),
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Social Login Section
              Center(
                child: Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialLoginButton(
                    icon: Icons.g_mobiledata,
                    label: 'Google',
                    color: const Color(0xFFDB4437),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  SocialLoginButton(
                    icon: Icons.facebook,
                    label: 'Facebook',
                    color: const Color(0xFF4267B2),
                    onPressed: () {},
                  ),
                ],
              ),
              
              const Spacer(),
              
              // Road Safety Footer
              Center(
                child: Text(
                  'Road Safety: A Small Effort, A Big Difference\n'
                  'Slow Down, Save Lives',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red[700],
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}