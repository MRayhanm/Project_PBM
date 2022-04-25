import 'package:awal/admin.dart';
import 'package:awal/login.dart';
import 'package:awal/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 105, 164, 194),
                Colors.white
              ])
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image.asset('assets/logo.png'),
                        ),
                        SizedBox(
                          child: Text("SEWA MOBIL LEBIH MUDAH",style: TextStyle(fontSize: 19,),),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(onPressed: (() {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const LoginPage();
                          }));
                        }),
                                style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 37, 68),
                                onPrimary: Colors.black,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  
                                )
                              ), 
                        child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 170,
                                  child: const Text("MASUK", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),
                                )
                              ) 
                            ),
                          ElevatedButton(onPressed: (() {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const RegisterPage();
                          }));
                        }), 
                                style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 37, 68),
                                onPrimary: Colors.black,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  
                                )
                              ),
                        child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 170,
                                  child: const Text("DAFTAR", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),
                                ))),
                          ElevatedButton(onPressed: (() {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const AdminPage();
                          }));
                        }
                        ),
                                style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 37, 68),
                                onPrimary: Colors.black,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  
                                )
                              ), 
                        child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 170,
                                  child: const Text("ADMIN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),
                                )
                              ) 
                            ),
                          
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }}