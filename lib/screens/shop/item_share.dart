import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/wide_outline_button.dart';

class ItemShare extends StatelessWidget {
  const ItemShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(FontAwesomeIcons.xmark)),
          const SizedBox(
            width: 11.25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                '공유',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              WideOutlineButton(
                  onPressed: () {},
                  label: '인스타그램',
                  iconData: FontAwesomeIcons.instagram),
              WideOutlineButton(
                  onPressed: () {},
                  label: '페이스북',
                  iconData: FontAwesomeIcons.facebook),
              WideOutlineButton(
                  onPressed: () {},
                  label: '핀터레스트',
                  iconData: FontAwesomeIcons.pinterest),
              WideOutlineButton(
                  onPressed: () {},
                  label: '카카오톡',
                  iconData: FontAwesomeIcons.apple),
              WideOutlineButton(
                  onPressed: () {},
                  label: '트위터',
                  iconData: FontAwesomeIcons.twitter),
              WideOutlineButton(
                  onPressed: () {},
                  label: '링크복사',
                  iconData: FontAwesomeIcons.link),
            ],
          ),
        ),
      ),
    );
  }
}
