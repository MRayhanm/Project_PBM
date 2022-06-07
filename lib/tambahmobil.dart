
// import 'dart:io';

// import 'package:awal/camerapage.dart';
// import 'package:awal/konfirmasi.dart';
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const TambahPage());
// }

// class TambahPage extends StatefulWidget {
//   const TambahPage({Key? key}) : super(key: key);
//   @override
//   _TambahPageState createState() => _TambahPageState();
// }

// class _TambahPageState extends State<TambahPage> {
//   File? image;

// Future openCamera() async {
//   final pickedImage =
//       await ImagePicker().pickImage(source: ImageSource.camera);
//   image = File(pickedImage!.path);
// }

// Future openGallery() async {
//   final imageGallery =
//       await ImagePicker().pickImage(source: ImageSource.gallery);
//   image = File(imageGallery!.path);
// }

//   @override
//   Widget build(BuildContext context) {
//     var white;
//     return MaterialApp(
//       title: 'profile',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(''),
//           leading: IconButton(
//             onPressed: (){
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios_new_outlined)),
//         ),
//         body: SafeArea(
//           child: ListView(
//             children: [
//               Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children:<Widget>[
//                   IconButton(onPressed: () async{
//                     await availableCameras().then(
//                       (value) => Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => CameraPage(cameras : value,),
//                         )
//                       ),
//                       );
//                   }, 
//                   icon: Icon(Icons.camera_alt_outlined)),             
//                       Container(
//                         height: 80,
//                         alignment: Alignment.topCenter,
//                         child: Text
//                         ('Masuk', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)
//                         ,)
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Jenis Mobil',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),)
//                           ),
//                         ),
//                       ),
//                         Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tarif',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           // controller: _alamat,
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                         Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tipe Mesin',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           // controller: _durasi,
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Kapasitas Mesin',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Transmisi',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tenaga Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Alamat penyewaan',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Silinder',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tipe Transmisi',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Torsi Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 380,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                         SizedBox(height: 50,),

//                         ElevatedButton(onPressed: () {
//                         }, 
//                         child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                      
//                 ],
//                 ),
//             ),
//             ])
//         ),
//       ),
//     );
//   }
// }

