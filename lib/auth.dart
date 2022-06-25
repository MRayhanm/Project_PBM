import 'package:awal/login.dart';
import 'package:awal/register.dart';
import 'package:awal/signup.dart';
import 'package:flutter/material.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin? 
    LoginPage(onClickedSignUp: toggle) : 
    RegistrationScreen(onClickedSignUp: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}