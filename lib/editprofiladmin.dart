import 'package:awal/profil.dart';
import 'package:flutter/material.dart';

class EditprofiladminPage extends StatelessWidget {
  EditprofiladminPage({required this.nama, required this.alamatadmin,required this.nomorhp});
  final String nama;
  final String alamatadmin;
  final String nomorhp;

  TextEditingController _nama = new TextEditingController();
  TextEditingController _alamatadmin = new TextEditingController();
  TextEditingController _nomorhp = new TextEditingController();
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
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[
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
                      child:Text('Tujuan',style: TextStyle(fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      height: 70,
                      width: 380,
                      child: TextField(
                        controller: _nama,
                        decoration: InputDecoration(
                          hintText: nama,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))
                        ),
                      ),
                    ),
                      SizedBox(height: 50,),
                      Container(
                      padding: EdgeInsets.only(left: 13.0, right:9.0),
                      alignment: Alignment.topLeft,
                      child:Text('Alamat',style: TextStyle(fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      height: 70,
                      width: 380,
                      child: TextField(
                        controller: _alamatadmin,
                        decoration: InputDecoration(
                          hintText: alamatadmin,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))
                        ),
                      ),
                    ),
                      SizedBox(height: 50,),
                      Container(
                      padding: EdgeInsets.only(left: 13.0, right:9.0),
                      alignment: Alignment.topLeft,
                      child:Text('Durasi',style: TextStyle(fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      height: 70,
                      width: 380,
                      child: TextField(
                        controller: _nomorhp,
                        decoration: InputDecoration(
                          hintText: nomorhp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))
                        ),
                      ),
                    ),
                        ElevatedButton(onPressed: () {
                          Navigator.pop(context);
                      }, 
                      child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
              ],
              ),
          )
          )
    );
  }
}