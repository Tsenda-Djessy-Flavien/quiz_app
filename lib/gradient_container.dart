import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Widget child;

  const GradientContainer(this.child, {required this.colors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: child,
    );
  }
}
