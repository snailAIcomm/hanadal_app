import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Step3 extends StatelessWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 51),
            const Image(
              image: AssetImage('assets/images/intro/step3.png'),
              width: 280,
              height: 491,
            ),
            const SizedBox(height: 16),
            const Text(
              'NFT로 판다',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 14),
            const Text(
              '소중한 내 아바타와 패션 아이템으로\nNFT 만들고 수익내기',
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
                    FontAwesomeIcons.circle,
                    size: 10,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.solidCircle,
                  size: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: const Color.fromRGBO(57, 98, 218, 1)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 54),
                  child: Text(
                    '시작하기',
                    style: TextStyle(fontSize: 14),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
