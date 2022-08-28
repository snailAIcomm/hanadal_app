import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/shop/profile_preview.dart';
import 'package:hanadal_app/components/buttons/wide_outline_button.dart';
import 'package:hanadal_app/components/shop/list_title_with_filter.dart';
import 'package:hanadal_app/components/shop/item_type2.dart';

class SellerView extends StatelessWidget {
  final String _desc =
      '프로필 소개가 여기에 들어갑니다. 프로필 소개가 여기에 들어갑니다. 프로필 소개가 여기에 들어갑니다. 프로필 소개가 여기에 들어갑니다. 프로필 소개가 여기에 들어갑니다.';
  const SellerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이다미',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                ProfilePreview(desc: _desc),
                WideOutlineButton(
                    onPressed: () {},
                    label: '최대 10,000원 할인쿠폰',
                    iconData: FontAwesomeIcons.arrowDown),
                const ListTitleWithFilter('',
                    subTitles: ['상품', 'NFT', '코디'], showTotal: false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/51/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/52/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/53/104/150',
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
                        imageUrl: 'https://picsum.photos/id/57/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/58/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/59/104/150',
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
                        imageUrl: 'https://picsum.photos/id/54/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/55/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                    ItemType2(
                        imageUrl: 'https://picsum.photos/id/56/104/150',
                        brand: 'Freitag',
                        name: '피치 숄더백',
                        price: '5,000',
                        discountRatio: '30'),
                  ],
                ),
                const SizedBox(height: 11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
