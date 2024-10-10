import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swd_app/src/components/app_buttons.dart';

import 'package:swd_app/src/components/gradient_background_widget.dart';
import 'package:swd_app/src/screens/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(color: Colors.transparent),
      ),
      child: GradientBackground(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
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
                const SizedBox(height: 40.0),
                const Text(
                  "Verify your email",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10.0),
                RichText(
                  text: const TextSpan(
                    text: "Please enter the otp sent to \n",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "tolu.ab19@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: pinCodeController,
                  showCursor: false,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.center,
                  separatorBuilder: (context, index) => index == 2
                      ? const Text(
                          " - ",
                          style: TextStyle(fontSize: 20),
                        )
                      : const SizedBox(width: 5.0),
                  obscureText: true,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10.0),
                    fieldHeight: 55.0,
                    fieldWidth: 45.0,
                    activeColor: Colors.grey.shade800,
                    selectedColor: Colors.grey.shade800,
                    inactiveColor: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          persistentFooterButtons: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppElevatedButton(
                        label: "Verify email",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
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
                          color: Colors.grey.shade300,
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
                      "Email verification",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
