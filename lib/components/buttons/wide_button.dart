import 'package:flutter/material.dart';
import 'package:hanadal_app/constant/layout.dart' as layout;

class WideButton extends StatelessWidget {
  final String label;
  const WideButton({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(210, 178, 87, 1),
        fixedSize: layout.wideButtonSize,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(layout.buttonRadius)),
        textStyle: const TextStyle(fontSize: layout.normalFontSize),
      ),
      child: Text(label),
    );
  }
}
