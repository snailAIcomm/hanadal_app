import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/text_link.dart';

class Step1 extends StatelessWidget {
  Step1({Key? key}) : super(key: key) {
    delayAndRemoteSplash();
  }

  void delayAndRemoteSplash() async {
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 51),
            const Image(
              image: AssetImage('assets/images/intro/step1.png'),
              width: 280,
              height: 491,
            ),
            const SizedBox(height: 16),
            const Text(
              '맘대로 꾸민다',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 14),
            const Text(
              '내가 직접 못 입어보는 옷과 패션 아이템,\n아바타에게 맘껏 입혀 보기',
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
                    FontAwesomeIcons.solidCircle,
                    size: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Icon(
                    FontAwesomeIcons.circle,
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
                        Navigator.pushNamed(context, '/register/home');
                      },
                      text: '건너뛰기'),
                  TextLink(
                    onPressed: () {
                      Navigator.pushNamed(context, '/intro/step2');
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
