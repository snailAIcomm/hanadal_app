import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
    return const Center(
      child: Text('Step1'),
    );
  }
}
