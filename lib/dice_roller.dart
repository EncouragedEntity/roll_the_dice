import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNum = 1;
  void rollTheDice() {
    setState(() {
      currentDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: rollTheDice,
      child: Image.asset(
        'assets/images/dice-$currentDiceNum.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
