import 'package:hanadal_app/screens/intro/step1.dart';
import 'package:hanadal_app/screens/intro/step2.dart';
import 'package:hanadal_app/screens/intro/step3.dart';
import 'package:hanadal_app/screens/register/register_home.dart';
import 'package:hanadal_app/screens/register/register_nickname.dart';
import 'package:hanadal_app/screens/login/login_home.dart';
import 'package:hanadal_app/screens/shop/shop_base.dart';
import 'package:hanadal_app/screens/shop/item_view.dart';

final routes = {
  '/intro/step1': (context) => Step1(),
  '/intro/step2': (context) => const Step2(),
  '/intro/step3': (context) => const Step3(),
  '/register/home': (context) => const RegisterHome(),
  '/register/nickname': (context) => const RegisterNickname(),
  '/login/home': (context) => const LoginHome(),
  '/shop/home': (context) => const ShopBase(),
  '/shop/item_view': (context) => const ItemView()
};
