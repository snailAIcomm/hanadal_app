import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/components/forms/normal_text_field.dart';
import 'package:hanadal_app/components/forms/checkbox_with_label.dart';
import 'package:hanadal_app/components/buttons/wide_button.dart';

class RegisterNickname extends StatelessWidget {
  const RegisterNickname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.angleLeft,
            size: 24,
            color: Color.fromRGBO(186, 186, 186, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '닉네임을 입력해 주세요',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 11),
              const Text(
                '한글, 영어, 숫자로 입력 가능해요(8자 이상)',
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 9),
              const NormalTextField('닉네임을 입력해 주세요'),
              const SizedBox(height: 29),
              CheckBoxWithLabel(
                '이용약관 및 개인정보처리방침에 동의합니다(필수)',
                onChanged: (bool? value) {},
              ),
              const SizedBox(height: 7),
              CheckBoxWithLabel(
                '마케팅 정보 수신에 동의합니다(선택)',
                onChanged: (bool? value) {},
              ),
              const SizedBox(height: 8),
              WideButton(
                  label: '동의하고 시작하기',
                  onPressed: () {
                    Navigator.pushNamed(context, '/login/home');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
