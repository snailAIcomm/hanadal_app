import 'package:flutter/material.dart';

import 'package:hanadal_app/constant/layout.dart' as layout;

class CheckBoxWithLabel extends StatefulWidget {
  final String label;
  final ValueChanged<bool?>? onChanged;
  final bool initValue;

  const CheckBoxWithLabel(this.label,
      {required this.onChanged, this.initValue = false, Key? key})
      : super(key: key);

  @override
  State<CheckBoxWithLabel> createState() => _CheckBoxWithLabelState();
}

class _CheckBoxWithLabelState extends State<CheckBoxWithLabel> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                  widget.onChanged!(value);
                });
              }),
        ),
        const SizedBox(width: 6),
        Text(
          widget.label,
          style: const TextStyle(fontSize: layout.normalFontSize),
        )
      ],
    );
  }
}
