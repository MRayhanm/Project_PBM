import 'package:awal/list_car_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CategoryPage());
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
          flexibleSpace: Container(
            alignment: Alignment.center,
            child: IconButton(
            onPressed: (){}, 
              icon: Image.asset('assets/logo2.png'),
              iconSize: 180,),
        ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 115,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Container(
                  alignment: Alignment.topCenter,
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 226, 226, 226),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Text("Search",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        height: 50,
                        width: 310,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.center,
                child: Text("Kategori Mobil",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),),
              ),
              Container(
                  height: 455,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(     
                          mainAxisAlignment: MainAxisAlignment.center,               
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
                            height: 191,
                            width: 370,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Mobil 6 Kursi",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return CarlistPage();
                                        }));
                                      },
                                      icon: Image.asset('assets/avanza2.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 200,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                              ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(     
                          mainAxisAlignment: MainAxisAlignment.center,               
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
                            height: 191,
                            width: 370,
                            child: SizedBox(
                              child: Column(
                                children: [
                                    Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Mobil 4 Kursi",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('assets/brio.jpg'),
                                      alignment: Alignment.topCenter,
                                      iconSize: 200,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ),
                              ],),
                      ),
                    ],
                  ),
                ),

            ]),
        
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riawayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
        showUnselectedLabels: true,
       ),
      ),
    );
  }
}
