import 'package:awal/editprofil.dart';
import 'package:awal/editprofiladmin.dart';
import 'package:awal/konfirmasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilPage());
}

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  String nama = 'Mohammad Rayhan';
  String alamatrumah = 'Jember';
  String nomor = '085123456789';
  String Images = 'assets/pngegg.png';
  
  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'profile',
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
                  height: 680,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(Images),
                        backgroundColor: Colors.grey,
                        radius: 65.0,
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
                            color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            height: 200,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 145,
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Nama: ${nama}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                                          Text('Alamat: ${alamatrumah}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                                          Text('No.Handphone: ${nomor}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditprofilPage(
                            nama: nama,
                            alamatrumah: alamatrumah,
                            nomor: nomor,
                          ),
                          ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 49, 88),
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
                        child: const Text("Edit", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
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
      ),
    );
  }
}

