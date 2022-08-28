import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePreview extends StatelessWidget {
  final String? desc;
  const ProfilePreview({this.desc = '', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/shop/seller_view');
              },
              child: const SizedBox(
                width: 41,
                height: 41,
                child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/shop/profile_sample.png')),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '이다미',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  Text('#서울패션쇼 #30대 #캐주얼')
                ],
              ),
            ),
            Column(
              children: const [
                Icon(FontAwesomeIcons.star),
                SizedBox(height: 5),
                Text('12,343')
              ],
            )
          ],
        ),
        desc == ''
            ? const SizedBox(height: 0)
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(desc!, style: const TextStyle(fontSize: 12)),
              ),
      ],
    );
  }
}
