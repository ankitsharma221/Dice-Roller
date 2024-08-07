import 'package:dice2/dice_roller.dart';
import 'package:flutter/material.dart';

import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: widget.colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Diceroller(),
      ),
    );
  }
}
