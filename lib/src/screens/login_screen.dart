import 'package:flutter/material.dart';
import 'package:swd_app/src/components/app_buttons.dart';
import 'package:swd_app/src/components/app_text_field.dart';
import 'package:swd_app/src/components/gradient_background_widget.dart';
import 'package:swd_app/src/screens/home_screen.dart';
import 'package:swd_app/src/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height / 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.shade800.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        "Welcome back 👋🏾",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              AppTextField(
                controller: emailController,
                label: "Email address",
                hintText: "Enter Email address",
              ),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: emailController,
                label: "Password",
                hintText: "Enter Password",
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              AppElevatedButton(
                label: "Sign in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10.0),
              SecondaryAuthRichTextButton(
                mainText: "I don't have an account. ",
                secondaryText: "Create account",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
