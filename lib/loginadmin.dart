import 'package:awal/konfirmasi.dart';
import 'package:awal/profileadmin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoginadminPage());
}

class LoginadminPage extends StatefulWidget {
  const LoginadminPage({Key? key}) : super(key: key);
  @override
  _LoginadminPageState createState() => _LoginadminPageState();
}

class _LoginadminPageState extends State<LoginadminPage> {
  TextEditingController _nama = new TextEditingController();
  TextEditingController _alamatadmin = new TextEditingController();
  TextEditingController _nomorhp = new TextEditingController();
  
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
                          child:Text('Email',style: TextStyle(fontWeight: FontWeight.w800)),
                        ),
                        Container(
                          height: 70,
                          width: 380,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black))
                            ),
                          ),
                        ),
                          SizedBox(height: 20,),
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
                          SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 13.0, right:9.0),
                          alignment: Alignment.topLeft,
                          child:Text('Nama',style: TextStyle(fontWeight: FontWeight.w800)),
                        ),
                        Container(
                          height: 70,
                          width: 380,
                          child: TextField(
                            controller: _nama,
                            decoration: InputDecoration(
                              hintText: 'Nama',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black))
                            ),
                          ),
                        ),
                          SizedBox(height: 20,),
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
                              hintText: 'Alamat',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black))
                            ),
                          ),
                        ),
                          SizedBox(height: 20,),
                          Container(
                          padding: EdgeInsets.only(left: 13.0, right:9.0),
                          alignment: Alignment.topLeft,
                          child:Text('Nomor',style: TextStyle(fontWeight: FontWeight.w800)),
                        ),
                        Container(
                          height: 70,
                          width: 380,
                          child: TextField(
                            controller: _nomorhp,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Nomor',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black))
                            ),
                          ),
                        ),
                          SizedBox(height: 20,),

                          ElevatedButton(onPressed: () {}, 
                          child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                        
                  ],
                  ),
              ),
            ],
          )
        ),
      ),
    );
  }
}




                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => ProfileadminPage(nama: _nama.text, alamatadmin: _alamatadmin.text, nomorhp: _nomorhp.text)
                              //   ));
                          
// import 'package:awal/admin.dart';
// import 'package:awal/bottom.dart';
// import 'package:awal/home.dart';
// import 'package:awal/register.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const LoginPage());
// }

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     var white;
//     return MaterialApp(
//       title: 'profile',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
//           leading: GestureDetector(
//             onTap: (() {
//               Navigator.pop(context);
//             }),
//           ),
//         ),
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children:<Widget>[
//                   Container(
//                     height: 80,
//                     alignment: Alignment.topCenter,
//                     child: Text
//                     ('Masuk', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)
//                     ,)
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 13.0, right:9.0),
//                     alignment: Alignment.topLeft,
//                     child:Text('Email',style: TextStyle(fontWeight: FontWeight.w800)),
//                   ),
//                   Container(
//                     height: 70,
//                     width: 380,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Email',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: Colors.black))
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 13.0, right:9.0),
//                     alignment: Alignment.topLeft,
//                     child:Text('Password',style: TextStyle(fontWeight: FontWeight.w800)),
//                   ),
//                   Container(
//                     height: 70,
//                     width: 380,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Password',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: Colors.black))
//                       ),
//                     ),
//                   ),
//                     SizedBox(height: 50,),
//                     ElevatedButton(onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context){
//                         return const BottomPage();
//                       }));
//                     }, 
//                     child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                  
//             ],
//             )
//         ),
//       ),
//     );
//   }
// }
