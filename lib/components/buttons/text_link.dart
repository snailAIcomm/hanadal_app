import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const TextLink({required this.onPressed, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
      child: Text(text),
    );
  }
}
