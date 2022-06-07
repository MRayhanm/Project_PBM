import 'package:awal/admin.dart';
import 'package:awal/bottom.dart';
import 'package:awal/home.dart';
import 'package:awal/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class SignUpPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const SignUpPage({
    Key? key,
    required this.onClickedSignUp,
  }):super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                            ('Daftar', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)
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
                            ElevatedButton(onPressed: signUp, 
                            child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
                            SizedBox(height: 20,),
                            RichText(text: TextSpan(
                              text: 'Sudah memiliki akun?',
                              style: TextStyle(color: Colors.black, fontSize: 14),
                              children: [TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignUp,
                                text: 'Login',
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

  Future signUp() async {
    try{
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(), 
    );
    }
    on FirebaseException catch(e) {
      print(e);
    }
  }
}

