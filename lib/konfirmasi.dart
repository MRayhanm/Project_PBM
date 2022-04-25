import 'package:flutter/material.dart';



class ConfirmPage extends StatelessWidget {

  String tujuan,alamat,durasi;

   ConfirmPage({required this.tujuan, required this.alamat, required this.durasi});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Column(
          children: [
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
                            color: Color.fromARGB(255, 204, 232, 255),
                            ),
                            height: 400,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 160,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 100,
                                            child: Image.asset('assets/1.jpg'),
                                          ),
                                        )
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              child: Text("Daihatsu Terios",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                                              ),
                                          Container(
                                              child: Text("Rp. 200.000 / hari",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                                              ),
                                          Container(
                                              child: Text('Sewa = ${durasi} Hari',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
                                              ),
                                        ],
                                      ),
                                  ],
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: Color.fromARGB(255, 128, 178, 219),
                                    width: 400,
                                    height: 55,
                                    child: Text("Total Sewa : ${durasi}", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 145,
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('tujuan: ${tujuan}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                                          Text('alamat: ${alamat}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => PembayaranPage(),
                        //   ));
                      }, 
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
                        child: const Text("Batalkan", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
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