import 'package:awal/list_car_user2.dart';
import 'package:awal/list_car_user6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CategoryPage());
}

int _selectedIndex = 1;

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/logo2.png'),
            iconSize: 185,
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 245, 245, 245),
              alignment: Alignment.center,
              child: Text(
                "Kategori Mobil",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              height: 550,
              width: 500,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
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
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          height: 195,
                          width: 370,
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Mobil 6 Kursi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Carlist6Page();
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          height: 195,
                          width: 370,
                          child: SizedBox(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Mobil 4 Kursi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Carlist4Page();
                                      }));
                                    },
                                    icon: Image.asset('assets/brio.jpg'),
                                    alignment: Alignment.topCenter,
                                    iconSize: 200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
