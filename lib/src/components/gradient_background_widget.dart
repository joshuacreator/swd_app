import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 0.6,
          center: Alignment.topRight,
          colors: [
            Colors.orange.withOpacity(0.1),
            Colors.black,
          ],
        ),
      ),
      child: child,
    );
  }
}
