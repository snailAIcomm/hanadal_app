import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Anna Luisa 넥레이스')),
        body: Container(
          child: const Text('아이템 상세 페이지'),
        ));
  }
}
