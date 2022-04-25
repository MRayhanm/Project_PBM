import 'package:flutter/material.dart';

void main() {
  runApp(const RegisterAdminPage());
}

class RegisterAdminPage extends StatelessWidget {
  const RegisterAdminPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'profile',
      home: Scaffold(
        appBar: AppBar(
          title: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined),
          // KURANG BOTTOOM !!
        ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
                  Container(
                    height: 80,
                    alignment: Alignment.topCenter,
                    child: Text
                    ('Daftar Admin', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)
                    ,)
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:Text('Nama',style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                  Container(
                    height: 70,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nama',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:Text('Email',style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                  Container(
                    height: 70,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:Text('Password',style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                  Container(
                    height: 70,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:Text('No.Handphone',style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                  Container(
                    height: 70,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'No.Handphone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:Text('Alamat Penyewaan',style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                 Container(
                    height: 70,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Alamat Penyewaan',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.only(left: 13.0, right:9.0),
                    alignment: Alignment.topLeft,
                    child:
                      Text('Kartu Tanda Penduduk',style: TextStyle(fontWeight: FontWeight.w800)),
                    // KURANG ICON DROBBOX
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    color:Color.fromARGB(255, 187, 185, 180),
                    height: 30,
                    width: 150,
                    child: Icon(Icons.upload,size: 30,),
                  ),
                  
                    SizedBox(height: 50,),
                    ElevatedButton(onPressed: () {
                      
                    }, 
                    child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                    
                  

                  
            ],
            )
        ),
      ),
    );
  }
}

