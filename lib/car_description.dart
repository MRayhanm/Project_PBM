import 'package:awal/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarDescription());
}

class CarDescription extends StatelessWidget {
  const CarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Column(
          children: [
            Container(
                height: 160,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 100,
                    color: Colors.white,
                    child: Image.asset('assets/1.jpg'),
                  ),
                )
              ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Text("Daihatsu Terios",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
                Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Text("Rp. 200.000 / hari",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
              ),
              Container(
                  height: 460,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 400,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Deskripsi", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [Text("Tipe Mesin : IL, 4 Cylinder, 16 Valve, DOHC, Dual VVT-i", style: TextStyle(fontSize: 16),),
                                        Text("Kapasitas Mesin : 1496 cc", style: TextStyle(fontSize: 16),),
                                        Text("Silinder : 4", style: TextStyle(fontSize: 16),),
                                        Text("Transmisi : Manual", style: TextStyle(fontSize: 16),),
                                        Text("Tipe Transmisi : 5 Kecepatan", style: TextStyle(fontSize: 16),),
                                        Text("Tenaga Maksimal :104 HP / 6000 rpm", style: TextStyle(fontSize: 16),),
                                        Text("Torsi Maksimal: 139 nm / 4200 rpm", style: TextStyle(fontSize: 16),),
                                        Text("Bahan Bakar: Bensin", style: TextStyle(fontSize: 16),),
                                        SizedBox(height: 20,),
                                        Text("Alamat penyewaan        : -", style: TextStyle(fontSize: 16),),
                                        Text("Contact Person        : - ", style: TextStyle(fontSize: 16),),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 75,
                        child: const Text("Sewa", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                      )),
                  ),
                                        ],
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
          ]),
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
          )
    );
  }
}