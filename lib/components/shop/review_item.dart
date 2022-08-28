import 'package:flutter/material.dart';

import 'package:hanadal_app/components/shop/review_stars.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
              thickness: 1, height: 1, color: Color.fromRGBO(221, 221, 221, 1)),
        ),
        Row(
          children: const [
            Text('user_id',
                style: TextStyle(fontSize: 12, color: Colors.black)),
            SizedBox(width: 15),
            ReviewStars(score: 5, size: 12),
            Expanded(child: SizedBox(width: 1)),
            Text('2022.04.15 22:15',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/shop/profile_sample.png')),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                  '댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. 댓글이 여기에 들어갑니다. '),
            )
          ],
        )
      ],
    );
  }
}
