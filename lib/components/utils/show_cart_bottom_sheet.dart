import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showCartBottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
    expand: false,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => const CartBottomsheet(),
  );
}

class CartBottomsheet extends StatelessWidget {
  const CartBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('장바구니에 담겼습니다. 장바구니를 확인하시겠어요?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(150, 40),
                      elevation: 3),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    '아니오',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(150, 40),
                      elevation: 3),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    '네, 확인할께요',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
