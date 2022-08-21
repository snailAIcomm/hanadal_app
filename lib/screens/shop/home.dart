import 'package:flutter/material.dart';

import 'package:hanadal_app/components/shop/shop_banner.dart';
import 'package:hanadal_app/components/shop/list_title_with_filter.dart';
import 'package:hanadal_app/components/shop/item_type1.dart';
import 'package:hanadal_app/components/shop/item_type2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('샵 메인'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const ShopBanner(),
            const ListTitleWithFilter('인기 코디', subTitles: ['아우터', '팬츠', '스커트']),
            Container(
              height: 111,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_1.png',
                      brand: 'Anna Luisa',
                      name: '넥레이스코디'),
                  SizedBox(width: 11),
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_2.png',
                      brand: 'Anna Sui',
                      name: '퓨어 탑 매치'),
                  SizedBox(width: 11),
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_3.png',
                      brand: 'CK',
                      name: '화이트 레이어드'),
                ],
              ),
            ),
            const ListTitleWithFilter('인기 아바타 의상',
                subTitles: ['아우터', '팬츠', '스커트']),
            Container(
              height: 111,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_1.png',
                      brand: 'Anna Luisa',
                      name: '넥레이스코디'),
                  SizedBox(width: 11),
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_2.png',
                      brand: 'Anna Sui',
                      name: '퓨어 탑 매치'),
                  SizedBox(width: 11),
                  ItemType1(
                      imageUrl: 'assets/images/shop/item_small_3.png',
                      brand: 'CK',
                      name: '화이트 레이어드'),
                ],
              ),
            ),
            const ListTitleWithFilter('인기 아이템',
                subTitles: ['일간', '월간', '주간'], showTotal: false),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/4/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/5/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/6/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
              ],
            ),
            const SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/4/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/5/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/6/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
              ],
            ),
            const SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/4/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/5/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
                ItemType2(
                    imageUrl: 'https://picsum.photos/id/6/104/150',
                    brand: 'Freitag',
                    name: '피치 숄더백',
                    price: '5,000',
                    discountRatio: '30'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
