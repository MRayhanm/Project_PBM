import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/list_car_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}
int _selectedIndex = 0;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 180,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Image.asset('assets/logo.png'),
              ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Text("Sedang Promo",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
              Container(
                  height: 355,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(     
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,               
                          children: [
                            Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                            ),
                            height: 160,
                            width: 160,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/brio-red.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 180,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Text("25%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                              color: Colors.white,
                            ),
                              height: 160,
                              width: 160,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/jazz-old.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 180,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Text("40%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                              ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(     
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,               
                          children: [
                            Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                            ),
                            height: 160,
                            width: 160,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/1.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 180,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Text("25%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                              ],
                              color: Colors.white,
                            ),
                              height: 160,
                              width: 160,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/avanza.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 180,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Text("10%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                              ],),
                      ),
                    ],
                  ),
                ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(27.8),
                  
                  child: Container(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const CategoryPage();
                        }));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 350,
                        child: const Text("Kategori Mobil", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300,),
                      )),
                  ),
                )
                ),
              )],
          ),
        
        ),

      ),
    );
  }
}
