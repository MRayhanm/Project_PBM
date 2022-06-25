import 'package:awal/Pesananadmin.dart';
import 'package:awal/Riwayatcustomeradmin.dart';
import 'package:awal/cameraprev.dart';
import 'package:awal/cameraprev2.dart';
import 'package:awal/categoryadmin.dart';
import 'package:awal/editprofiladmin.dart';
import 'package:awal/first_page.dart';
import 'package:awal/mobil4admin.dart';
import 'package:awal/mobil6admin.dart';
import 'package:awal/penyewaan.dart';
import 'package:awal/registeramdin.dart';
import 'package:awal/riwayat.dart';
import 'package:awal/tambahmobil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProfileadminPage extends StatefulWidget {

  @override
  State<ProfileadminPage> createState() => _ProfileadminPageState();
}

class _ProfileadminPageState extends State<ProfileadminPage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
  Future<void> _signOut() async{
    // final user = FirebaseAuth.instance.currentUser!;
    // final _auth = FirebaseAuth.instance;
    FirebaseAuth.instance.signOut();
    final user = FirebaseAuth.instance.currentUser!;
    runApp(
      MaterialApp(
        home: FirstPage(),
      )
    );
  }
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: IconButton(onPressed: (){}, 
          icon: Image.asset('assets/logo2.png'),
          iconSize: 185,),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.blueAccent,Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25),
              Container(  
                padding: EdgeInsets.only(left: 10,right: 0),
                height: 134,
                width: 340,
                alignment: Alignment.centerLeft,
                child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Nama  : ${loggedInUser.Name}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
                      Text("Alamat  : ${loggedInUser.Alamat}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
                      Text("No. Handphone  : ${loggedInUser.Nomor}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
                      
                    ],
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                  color: Color.fromARGB(255, 223, 223, 223),
                  blurRadius: 20,
                     )]
                  ),
              ),
              SizedBox(height: 15,),
              Container( 
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                  color: Color.fromARGB(255, 223, 223, 223),
                  blurRadius: 20,
                     )]
                  ),
                  child: Column(                   
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      //  Row(
                      //    children:[  
                      //       IconButton(
                      //         onPressed: () {},
                      //         icon: Icon(Icons.edit_note),                  
                      //       ),
                      //       Text('Edit Profil'),
                      //    ]  
                      //  ),
                      //  Row(
                      //    children:[  
                      //       IconButton(
                      //         onPressed: () {                      
                      //     Navigator.push(context, MaterialPageRoute(builder: (context){
                      //     return const RiwayatadminPage();
                      // }));
                      //   },
                      //         icon: Icon(Icons.lock),                  
                      //       ),
                      //       Text('Ganti Password'),
                      //    ]  
                      //  ),
                      Row(
                         children:[  
                            IconButton(
                              onPressed: () => _signOut(),
                              icon: Icon(Icons.logout, color: Colors.red,),                  
                            ),
                            Text('Keluar', style: TextStyle(color: Colors.red),),
                         ]  
                       ),
                    ],
                  )
              ),  
              Container(
                height: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                                
                              )
                            ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return MobilKecilPage();
                      }));
                      }, 
                      child: Container(
                      padding: EdgeInsets.only(left:7, right:0),
                      height:50,
                      alignment: Alignment.center,
                      child: Text("Daftar Mobil 4 Kursi",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                    ),
                      ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                                
                              )
                            ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return MobilBesarPage();
                      }));
                      }, 
                      child: Container(
                      padding: EdgeInsets.only(left:7, right:0),
                      height:50,
                      alignment: Alignment.center,
                      child: Text("Daftar Mobil 6 Kursi",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                    ),
                      ),
                  ],
                ),
              ),      

                // Container(
                //   color: Color.fromARGB(255, 255, 255, 255),
                //   height: 61,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       IconButton(
                //         onPressed: (){                      
                //           Navigator.push(context, MaterialPageRoute(builder: (context){
                //           return PesananPage();
                //       }));
                //         },
                //         icon: Icon(Icons.add_chart)),
                //       IconButton(
                //         onPressed: (){                      
                //           Navigator.push(context, MaterialPageRoute(builder: (context){
                //           return const CategoryAdmin();
                //       }));
                //         },
                //         icon: Icon(Icons.add_circle,size: 50,color: Color.fromARGB(255, 0, 1, 8),)),
                //       IconButton(
                //         onPressed: (){                      
                //           Navigator.push(context, MaterialPageRoute(builder: (context){
                //           return RiwayatPage();
                //       }));
                //         },
                //         icon: Icon(Icons.history_outlined))
                //     ],
                //   ),
                // )
               ]
               ),
        
        ),
        
      ),
    );
  }

  //                   Widget buildCars(Cars cars) => 
  //                       Container(
  //                         alignment: Alignment.centerLeft,
  //                         height: 90,
  //                         decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(15),
  //                           color: Colors.white,
  //                           boxShadow: [BoxShadow(
  //                             color: Color.fromARGB(255, 83, 83, 83),
  //                             blurRadius: 3,
  //                           )]
  //                         ),
  //                         child: ListTile(
  //                         leading: Image.asset('assets/1.jpg'), 
  //                         title: Text(cars.merk, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
  //                         subtitle: Text(cars.tahun.toString()),
  //                       ),
  //                     );
  //                     Widget buildCars2(Cars2 cars2) => 
  //                       Container(
  //                         alignment: Alignment.centerLeft,
  //                         height: 90,
  //                         decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(15),
  //                           color: Colors.white,
  //                           boxShadow: [BoxShadow(
  //                             color: Color.fromARGB(255, 83, 83, 83),
  //                             blurRadius: 3,
  //                           )]
  //                         ),
  //                         child: ListTile(
  //                         leading: Image.asset('assets/1.jpg'), 
  //                         title: Text(cars2.merk, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
  //                         subtitle: Text(cars2.tahun.toString()),
  //                       ),
  //                     );

  // // ListTile(
  // Stream<List<Cars>> readCars() => FirebaseFirestore.instance
  // .collection('cars')
  // .where('merk', isEqualTo: 'Avanza')
  // .snapshots()
  // .map((snapshot) =>
  //     snapshot.docs.map((doc) => Cars.fromJson(doc.data())).toList());

  // Stream<List<Cars2>> readCars2() => FirebaseFirestore.instance
  // .collection('cars2')
  // .snapshots()
  // .map((snapshot) =>
  //     snapshot.docs.map((doc) => Cars2.fromJson(doc.data())).toList());
}






                       // children: <Widget>[
                        //   Container(                         
                        //       alignment: Alignment.bottomLeft,
                        //       height: 80,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(15),
                        //         color: Colors.white, 
                        //         boxShadow: [BoxShadow(
                        //           color: Color.fromARGB(255, 223, 223, 223),
                        //           blurRadius: 5,
                        //         )]
                        //       ),
                        //       child: ListTile(
                        //       leading: ConstrainedBox(constraints: 
                        //       BoxConstraints(
                        //         minWidth: 70,
                        //         minHeight: 70,
                        //         maxWidth: 100,
                        //         maxHeight: 100,
                        //       ),
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.network('https://img.inews.co.id/media/600/files/inews_new/2021/01/24/pajero_sports_2021.jpg',),    
                        //         iconSize: 100,                     
                        //       ),),
                        //       title: Text("Pajero Sport", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                        //       subtitle: Text("6 kursi"),
                        //       ),
                        //   ),
                        //   Container(                         
                        //       alignment: Alignment.bottomLeft,
                        //       height: 80,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(15),
                        //         color: Colors.white, 
                        //         boxShadow: [BoxShadow(
                        //           color: Color.fromARGB(255, 223, 223, 223),
                        //           blurRadius: 5,
                        //         )]
                        //       ),
                        //       child: ListTile(
                        //       leading: ConstrainedBox(constraints: 
                        //       BoxConstraints(
                        //         minWidth: 70,
                        //         minHeight: 70,
                        //         maxWidth: 100,
                        //         maxHeight: 100,
                        //       ),
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.network('https://ad-cms-daihatsu.imgix.net/uploads/productvariant/1592548239190.png?w=1028&h=auto&q=65&fm=jpg&auto=format&fit=max&crop=center',),    
                        //         iconSize: 100,                     
                        //       ),),
                        //       title: Text("Daihatsu Terios", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                        //       subtitle: Text("6 kursi"),
                        //       ),
                        //   ),
                        //   SizedBox(height: 3,),
                        //     Container(
                        //       alignment: Alignment.bottomLeft,
                        //       height: 80,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         color: Colors.white,
                        //         boxShadow: [BoxShadow(
                        //           color: Color.fromARGB(255, 223, 223, 223),
                        //           blurRadius: 5,
                        //         )]
                        //       ),
                        //       child: ListTile(
                        //       leading: ConstrainedBox(constraints: 
                        //       BoxConstraints(
                        //         minWidth: 70,
                        //         minHeight: 70,
                        //         maxWidth: 100,
                        //         maxHeight: 100,
                        //       ),
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.network('https://img.cintamobil.com/2021/12/09/tYG8w8tv/ertiga-4-d75d-55f4.jpg',), 
                        //         iconSize: 100,                        
                        //       ),),
                        //       title: Text("Suzuki Ertiga", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                        //       subtitle: Text("6 kursi"),
                        //     ),
                        //   ),
                        //   SizedBox(height: 5,),
                        //     Container(
                        //       alignment: Alignment.centerLeft,
                        //       height: 80,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         color: Colors.white,
                        //         boxShadow: [BoxShadow(
                        //           color: Color.fromARGB(255, 223, 223, 223),
                        //           blurRadius: 5,
                        //         )]
                        //       ),
                        //       child: ListTile(
                        //       leading: ConstrainedBox(constraints: 
                        //       BoxConstraints(
                        //         minWidth: 70,
                        //         minHeight: 70,
                        //         maxWidth: 100,
                        //         maxHeight: 100,
                        //       ),
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',), 
                        //         iconSize: 100,                
                        //       ),),
                        //       title: Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                        //       subtitle: Text("6 kursi"),
                        //     ),
                        //   )
                        // ],