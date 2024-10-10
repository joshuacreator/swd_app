import 'package:flutter/material.dart';
import 'package:swd_app/src/components/app_buttons.dart';
import 'package:swd_app/src/components/app_text_field.dart';
import 'package:swd_app/src/components/gradient_background_widget.dart';
import 'package:swd_app/src/screens/otp_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final referralCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.keyboard_arrow_left),
                        Text("Back"),
                      ],
                    ),
                  ),
                  const Text(
                    "Sign in instead",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      controller: firstNameController,
                      label: "First name",
                      hintText: "First name",
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: AppTextField(
                      controller: lastNameController,
                      label: "Last name",
                      hintText: "Last name",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: phoneNumberController,
                label: "Phone number",
                hintText: "Enter phone number",
              ),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: emailController,
                label: "Email address",
                hintText: "Enter email address",
              ),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: passwordController,
                label: "Create password",
                hintText: "Enter password",
              ),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: referralCodeController,
                label: "Referral code (Optional)",
                hintText: "Enter referral code",
              ),
              const SizedBox(height: 30.0),
              AppElevatedButton(
                label: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Account information",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
