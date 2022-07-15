import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/wide_outline_button.dart';
import 'package:hanadal_app/components/buttons/wide_button.dart';
import 'package:hanadal_app/components/forms/wide_text_field.dart';

class RegisterHome extends StatelessWidget {
  const RegisterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                '하나달에 가입하고\n맘껏 즐기기',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              WideOutlineButton(
                  onPressed: () {},
                  label: '구글로 가입',
                  iconData: FontAwesomeIcons.google),
              WideOutlineButton(
                  onPressed: () {},
                  label: '페이스북으로 가입',
                  iconData: FontAwesomeIcons.facebook),
              WideOutlineButton(
                  onPressed: () {},
                  label: '애플로 가입',
                  iconData: FontAwesomeIcons.apple),
              WideOutlineButton(
                  onPressed: () {},
                  label: '카카오로 가입',
                  iconData: FontAwesomeIcons.apple),
              WideOutlineButton(
                  onPressed: () {},
                  label: '네이버로 가입',
                  iconData: FontAwesomeIcons.apple),
              WideOutlineButton(
                  onPressed: () {},
                  label: '트위터로 가입',
                  iconData: FontAwesomeIcons.twitter),
              const SizedBox(height: 41),
              const Divider(
                thickness: 1,
                height: 1,
                color: Color.fromRGBO(238, 238, 238, 1),
              ),
              const SizedBox(height: 24),
              const Text(
                '이메일로 가입하기',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              const WideTextField('이메일을 입력해 주세요'),
              const SizedBox(height: 16),
              WideButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register/nickname');
                  },
                  label: '가입하기'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('이미 계정이 있다면'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login/home');
                    },
                    child: const Text('로그인'),
                  ),
                  const Text('하세요.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
