import 'package:flutter/material.dart';

import 'package:hanadal_app/constant/layout.dart' as layout;

class NormalTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const NormalTextField(this.hintText, {this.isPassword = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: layout.normalButtonWidth,
      child: TextFormField(
        validator: (value) => value!.isEmpty ? hintText : null,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          isDense: true,
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
