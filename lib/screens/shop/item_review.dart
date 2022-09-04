import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/constants/layout.dart' as layout;
import 'package:hanadal_app/components/shop/review_stars.dart';
import 'package:hanadal_app/components/shop/review_item.dart';

class ItemReview extends StatelessWidget {
  final String _hintText = '리뷰를 입력해 주세요';

  const ItemReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('리뷰(3)',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const Text(
              '구매 만족도',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReviewStars(score: 4.3),
                SizedBox(width: 20),
                Text('4.3',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                Text(' / 5',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 15),
            const ReviewItem(),
            const ReviewItem(),
            const ReviewItem(),
            const ReviewItem(),
            const ReviewItem(),
          ],
        ),
      ),
      persistentFooterButtons: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.star),
                SizedBox(width: 9),
                Icon(FontAwesomeIcons.star),
                SizedBox(width: 9),
                Icon(FontAwesomeIcons.star),
                SizedBox(width: 9),
                Icon(FontAwesomeIcons.star),
                SizedBox(width: 9),
                Icon(FontAwesomeIcons.star),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TextFormField(
                validator: (value) => value!.isEmpty ? _hintText : null,
                decoration: InputDecoration(
                  hintText: _hintText,
                  hintStyle: const TextStyle(),
                  contentPadding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(layout.buttonRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(layout.buttonRadius)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(layout.buttonRadius)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(layout.buttonRadius)),
                ),
                style: const TextStyle(fontSize: layout.wideFontSize),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(40),
                  elevation: 3),
              onPressed: () {},
              child: const Text(
                '리뷰 남기기',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
