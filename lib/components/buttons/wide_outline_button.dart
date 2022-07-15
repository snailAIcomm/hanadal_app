import 'package:flutter/material.dart';
import 'package:hanadal_app/constant/layout.dart' as layout;

class WideOutlineButton extends StatelessWidget {
  final String label;
  final IconData iconData;

  const WideOutlineButton(
      {required this.label, required this.iconData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(
          iconData,
          size: 18,
        ),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          primary: Colors.black,
          fixedSize: layout.wideButtonSize,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
        ),
      ),
    );
  }
}
