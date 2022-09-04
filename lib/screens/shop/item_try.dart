import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/utils/show_purchase_bottom_sheet.dart';

class ItemTry extends StatelessWidget {
  const ItemTry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('착용해 보기',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        actions: const [
          Icon(FontAwesomeIcons.bagShopping),
          SizedBox(
            width: 11.25,
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/shop/item_detail_1.png',
                fit: BoxFit.cover),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              minimumSize: const Size.fromHeight(40),
              elevation: 3),
          onPressed: () {
            showPurchaseBottomSheet(context);
          },
          child: const Text(
            '구매하기',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
