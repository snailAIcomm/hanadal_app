import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/text_link.dart';
import './step3.dart';
import 'package:hanadal_app/screens/register/register_home.dart';

class Step2 extends StatelessWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 51),
            const Image(
              image: AssetImage('assets/images/intro/step2.png'),
              width: 280,
              height: 491,
            ),
            const SizedBox(height: 16),
            const Text(
              '한껏 뽐낸다',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 14),
            const Text(
              '맘껏 꾸민 내 아바타,\nSNS에 공유하며 한껏 뽐내기',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Icon(
                    FontAwesomeIcons.circle,
                    size: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Icon(
                    FontAwesomeIcons.solidCircle,
                    size: 10,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.circle,
                  size: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextLink(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterHome()));
                    },
                    text: '건너뛰기',
                  ),
                  TextLink(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Step3()));
                    },
                    text: '다음',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
