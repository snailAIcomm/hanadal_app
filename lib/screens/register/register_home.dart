import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/buttons/wide_outline_button.dart';
import 'package:hanadal_app/components/buttons/wide_button.dart';
import 'package:hanadal_app/components/forms/wide_text_field.dart';

import 'package:hanadal_app/screens/login/login_home.dart';

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
              const WideOutlineButton(
                  label: '구글로 가입', iconData: FontAwesomeIcons.google),
              const WideOutlineButton(
                  label: '페이스북으로 가입', iconData: FontAwesomeIcons.facebook),
              const WideOutlineButton(
                  label: '애플로 가입', iconData: FontAwesomeIcons.apple),
              const WideOutlineButton(
                  label: '카카오로 가입', iconData: FontAwesomeIcons.apple),
              const WideOutlineButton(
                  label: '네이버로 가입', iconData: FontAwesomeIcons.apple),
              const WideOutlineButton(
                  label: '트위터로 가입', iconData: FontAwesomeIcons.twitter),
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
              const WideButton(label: '가입하기'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('이미 계정이 있다면'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginHome()));
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