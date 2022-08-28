import 'package:flutter/material.dart';

class ListTitleWithFilter extends StatelessWidget {
  final String title;
  final List<String> subTitles;
  final bool showTotal;

  const ListTitleWithFilter(this.title,
      {required this.subTitles, this.showTotal = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: _buildTitles(),
      ),
    );
  }

  List<Widget> _buildTitles() {
    List<Widget> widgets = [];

    if (subTitles.isNotEmpty) {
      widgets.add(Text(title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)));
      widgets.add(SizedBox(width: 15));
      for (int i = 0; i < subTitles.length - 1; i++) {
        widgets.add(Text(subTitles[i],
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)));
        widgets.add(SizedBox(width: 10));
      }

      widgets.add(Expanded(
        child: Text(subTitles[subTitles.length - 1],
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
      ));
    } else {
      widgets.add(Expanded(
        child: Text(title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
      ));
    }

    if (showTotal) {
      widgets.add(const Text('전체보기',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)));
    }

    return widgets;
  }
}
