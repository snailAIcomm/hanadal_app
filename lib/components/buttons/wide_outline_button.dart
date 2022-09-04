import 'package:flutter/material.dart';
import 'package:hanadal_app/constants/layout.dart' as layout;

class WideOutlineButton extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback? onPressed;

  const WideOutlineButton(
      {required this.label,
      required this.iconData,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size: 18,
        ),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          primary: Colors.black,
          side: const BorderSide(color: Colors.grey),
          fixedSize: layout.wideButtonSize,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
        ),
      ),
    );
  }
}
