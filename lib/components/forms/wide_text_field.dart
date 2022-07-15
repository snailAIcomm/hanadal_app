import 'package:flutter/material.dart';

import 'package:hanadal_app/constant/layout.dart' as layout;

class WideTextField extends StatelessWidget {
  final String hintText;
  const WideTextField(this.hintText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: layout.wideButtonWidth,
      height: layout.wideButtonHeight,
      child: TextFormField(
        validator: (value) => value!.isEmpty ? hintText : null,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
        ),
        style: const TextStyle(fontSize: layout.normalFontSize),
      ),
    );
  }
}
