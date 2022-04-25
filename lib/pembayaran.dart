import 'package:awal/konfirmasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PembayaranPage());
}

class PembayaranPage extends StatefulWidget {
  const PembayaranPage({Key? key}) : super(key: key);
  @override
  _PembayaranPageState createState() => _PembayaranPageState();
}

class _PembayaranPageState extends State<PembayaranPage> {
  TextEditingController _tujuan = new TextEditingController();
  TextEditingController _alamat = new TextEditingController();
  TextEditingController _durasi = new TextEditingController();
  
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
        body: SafeArea(
          child: ListView(
            children: [
              Container(
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
                          controller: _tujuan,
                          decoration: InputDecoration(
                            hintText: 'Tujuan',
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
                          controller: _alamat,
                          decoration: InputDecoration(
                            hintText: 'Alamat',
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
                          controller: _durasi,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Durasi',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                        SizedBox(height: 50,),

                        ElevatedButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConfirmPage(tujuan: _tujuan.text, alamat: _alamat.text, durasi: _durasi.text)
                              ));
                        }, 
                        child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                      
                ],
                ),
            ),
            ])
        ),
      ),
    );
  }
}

