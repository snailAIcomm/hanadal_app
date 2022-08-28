import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/shop/list_title_with_filter.dart';
import 'package:hanadal_app/components/shop/item_type1.dart';

class HotCodi extends StatelessWidget {
  const HotCodi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('인기코디',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
          actions: const [
            Icon(FontAwesomeIcons.bagShopping),
            SizedBox(
              width: 11.25,
            )
          ],
        ),
        body: ListView(
          children: [
            AspectRatio(
              aspectRatio: 2.5,
              child: Image.asset(
                'assets/images/shop/codi_banner.png',
                fit: BoxFit.cover,
              ),
            ),
            const ListTitleWithFilter(
              '',
              subTitles: ['아우터', '팬츠', '스커트', '잡화'],
              pathForTotal: '/shop/hot_codi',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_1.png',
                    brand: 'Anna Luisa',
                    name: '넥레이스코디'),
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_2.png',
                    brand: 'Anna Sui',
                    name: '퓨어 탑 매치'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_1.png',
                    brand: 'Anna Luisa',
                    name: '넥레이스코디'),
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_2.png',
                    brand: 'Anna Sui',
                    name: '퓨어 탑 매치'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_1.png',
                    brand: 'Anna Luisa',
                    name: '넥레이스코디'),
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_2.png',
                    brand: 'Anna Sui',
                    name: '퓨어 탑 매치'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_1.png',
                    brand: 'Anna Luisa',
                    name: '넥레이스코디'),
                ItemType1(
                    width: 160,
                    imageUrl: 'assets/images/shop/item_small_2.png',
                    brand: 'Anna Sui',
                    name: '퓨어 탑 매치'),
              ],
            )
          ],
        ));
  }
}
