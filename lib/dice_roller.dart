import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollTheDice() {
    var randomNum = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$randomNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: rollTheDice,
      child: Image.asset(
        activeDiceImage,
        width: 200,
        height: 200,
      ),
    );
  }
}
