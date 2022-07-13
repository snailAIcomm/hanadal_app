import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final String label;
  final IconData iconData;

  const RegisterButton({required this.label, required this.iconData, Key? key})
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
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            fixedSize: MaterialStateProperty.all<Size>(Size(269, 44))),
      ),
    );
  }
}
