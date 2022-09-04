import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/shop/item_type2.dart';
import 'package:hanadal_app/components/shop/profile_preview.dart';
import 'package:hanadal_app/components/utils/show_purchase_bottom_sheet.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Anna Luisa 넥레이스',
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
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/shop/item_view_detailed_image');
              },
              child: SizedBox(
                height: 259,
                child: Image.asset('assets/images/shop/item_detail_1.png',
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Anna Luisa 넥레이스',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text('35,000 원 (30% 할인)'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(FontAwesomeIcons.heart),
                          const SizedBox(width: 24),
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/shop/item_share');
                              },
                              icon: const Icon(
                                  FontAwesomeIcons.arrowUpFromBracket)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        '상품 소개가 여기에 들어갑니다. Anna Luisa 넥레이스 상품 소개가 여기에 들어갑니다. Anna Luisa 넥레이스 상품 소개가 여기에 들어갑니다. Anna Luisa 넥레이스 상품 소개가 여기에 들어갑니다.'),
                  ),
                  const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color.fromRGBO(221, 221, 221, 1)),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: ProfilePreview(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemType2(
                        imageUrl: 'https://picsum.photos/id/4/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30',
                        desc: '상품설명이 들어감',
                      ),
                      ItemType2(
                        imageUrl: 'https://picsum.photos/id/5/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30',
                        desc: '상품설명이 들어감',
                      ),
                      ItemType2(
                        imageUrl: 'https://picsum.photos/id/6/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30',
                        desc: '상품설명이 들어감',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50),
                  elevation: 3),
              onPressed: () {
                Navigator.pushNamed(context, '/shop/item_review');
              },
              child: const Text(
                '리뷰(3)',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/shop/item_try');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 167,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Text('착용해보기'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showPurchaseBottomSheet(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 167,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Text('구매하기'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
