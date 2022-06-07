import 'package:awal/admin.dart';
import 'package:awal/auth.dart';
import 'package:awal/bottom.dart';
import 'package:awal/home.dart';
import 'package:awal/login.dart';
import 'package:awal/profileadmin.dart';
import 'package:awal/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MasukAdminPage());
}

class MasukAdminPage extends StatefulWidget {
  const MasukAdminPage({Key? key}) : super(key: key);

  @override
  State<MasukAdminPage> createState() => _MasukAdminPageState();
}

class _MasukAdminPageState extends State<MasukAdminPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'profile',
      home: Scaffold(
        body: Center(
          child: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData){
                  return ProfileadminPage();
                  }
                else {
                  return AuthPage();
              }}
            ),
        )
      ),
    );
  }

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(), 
    );
  }
}

