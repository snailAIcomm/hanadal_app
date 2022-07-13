import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/register_button.dart';

class RegisterHome extends StatelessWidget {
  const RegisterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 100),
            Text(
              '하나달에 가입하고\n맘껏 즐기기',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            RegisterButton(label: '구글로 가입', iconData: FontAwesomeIcons.google),
            RegisterButton(
                label: '페이스북으로 가입', iconData: FontAwesomeIcons.facebook),
            RegisterButton(label: '애플로 가입', iconData: FontAwesomeIcons.apple),
            RegisterButton(label: '카카오로 가입', iconData: FontAwesomeIcons.apple),
            RegisterButton(label: '네이버로 가입', iconData: FontAwesomeIcons.apple),
            RegisterButton(
                label: '트위터로 가입', iconData: FontAwesomeIcons.twitter),
          ],
        ),
      ),
    );
  }
}
