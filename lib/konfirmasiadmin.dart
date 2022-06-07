import 'package:awal/Pengembalianadmin.dart';
import 'package:awal/Pesananadmin.dart';
import 'package:awal/Riwayatcustomeradmin.dart';
import 'package:awal/home.dart';
import 'package:awal/pembayaran.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConfirmAdmin());
}

class ConfirmAdmin extends StatelessWidget {
  const ConfirmAdmin({Key? key}) : super(key: key);

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
                  height: 675,
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
                height: 160,
                color: Color.fromARGB(255, 255, 255, 255),
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
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                child: Text("Daihatsu Terios",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
                Container(
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                child: Text("Sewa = 2 Hari",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
              ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [Text("Nama : Dimas ", style: TextStyle(fontSize: 16),),
                                        Text("Alamat : Jember", style: TextStyle(fontSize: 16),),
                                        Text("No. Handphone : 085273897107", style: TextStyle(fontSize: 16),),
                                        Text("Total sewa : Rp. 400.000", style: TextStyle(fontSize: 16),),
                                        SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PengembalianPage(),
                          ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 0, 29),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 260,
                        child: const Text("Konfirmasi Pembayaran", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
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
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 61,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: (){                      
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const PesananPage();
                      }));
                        },
                        icon: Icon(Icons.add_chart)),
                      IconButton(
                        onPressed: (){                      
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const PesananPage();
                      }));
                        },
                        icon: Icon(Icons.add_circle,size: 50,color: Color.fromARGB(255, 0, 1, 8),)),
                      IconButton(
                        onPressed: (){                      
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const RiwayatadminPage();
                      }));
                        },
                        icon: Icon(Icons.history_outlined))
                    ],
                  ),
                )
          ]),
          )
    );
  }
}