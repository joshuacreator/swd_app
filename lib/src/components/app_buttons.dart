import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
  });
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1],
          colors: [
            Colors.red,
            Colors.orange,
          ],
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(15.0),
          backgroundColor: Colors.transparent,
        ),
        child: Text(label),
      ),
    );
  }
}

class SecondaryAuthRichTextButton extends StatelessWidget {
  const SecondaryAuthRichTextButton({
    super.key,
    required this.mainText,
    required this.secondaryText,
    required this.onTap,
  });
  final String mainText, secondaryText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              text: TextSpan(
                text: mainText,
                style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                children: [
                  TextSpan(
                    text: secondaryText,
                    style: const TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
