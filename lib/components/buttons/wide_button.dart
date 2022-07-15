import 'package:flutter/material.dart';
import 'package:hanadal_app/constant/layout.dart' as layout;

class WideButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const WideButton({required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: layout.wideButtonSize,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(layout.buttonRadius)),
        textStyle: const TextStyle(fontSize: layout.wideFontSize),
      ),
      child: Text(label),
    );
  }
}
