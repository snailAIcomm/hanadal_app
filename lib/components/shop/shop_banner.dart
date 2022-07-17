import 'package:flutter/material.dart';

class ShopBanner extends StatelessWidget {
  const ShopBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            'assets/images/shop/main_banner.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 5 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/shop/sub_banner1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: AspectRatio(
                aspectRatio: 5 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/shop/sub_banner2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
