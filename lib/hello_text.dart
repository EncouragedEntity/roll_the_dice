import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.content, {super.key});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 9, 246, 242),
      ),
    );
  }
}
