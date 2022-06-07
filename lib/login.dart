import 'package:awal/admin.dart';
import 'package:awal/bottom.dart';
import 'package:awal/home.dart';
import 'package:awal/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginPage({
    Key? key,
    required this.onClickedSignUp,
  }):super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: ListView(
          children: 
                    [Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      SizedBox(
                        height: 80,
                      ),
                          Container(
                            height: 80,
                            alignment: Alignment.topCenter,
                            child: Text
                            ('Masuk', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)
                            ,)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13.0, right:9.0),
                            alignment: Alignment.topLeft,
                            child:Text('Email',style: TextStyle(fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            height: 70,
                            width: 380,
                            child: TextField(
                              controller : emailController,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13.0, right:9.0),
                            alignment: Alignment.topLeft,
                            child:Text('Password',style: TextStyle(fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            height: 70,
                            width: 380,
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))
                              ),
                            ),
                          ),
                            SizedBox(height: 30,),
                            ElevatedButton(onPressed: signIn, 
                            child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
                            SizedBox(height: 20,),
                            RichText(text: TextSpan(
                              text: 'Belum memiliki akun?',
                              style: TextStyle(color: Colors.black, fontSize: 14),
                              children: [TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignUp,
                                text: 'Daftar akun',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )
                              )]
                            ))
                    ],
                    ),
                  ],
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

