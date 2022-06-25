import 'package:awal/first_page.dart';
import 'package:awal/mobil4admin.dart';
import 'package:awal/mobil6admin.dart';
import 'package:awal/registeramdin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
    Future<void> _signOut() async {
      FirebaseAuth.instance.signOut();
      final user = FirebaseAuth.instance.currentUser!;
      runApp(MaterialApp(
        home: FirstPage(),
      ));
    }

    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/logo2.png'),
            iconSize: 185,
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        body: SafeArea(
          child: Column(children: <Widget>[
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(left: 10, right: 0),
              height: 134,
              width: 340,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Nama  : ${loggedInUser.Name}",
                    style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),
                  ),
                  Text(
                    "Alamat  : ${loggedInUser.Alamat}",
                    style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),
                  ),
                  Text(
                    "No. Handphone  : ${loggedInUser.Nomor}",
                    style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 223, 223, 223),
                      blurRadius: 20,
                    )
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 223, 223, 223),
                        blurRadius: 20,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(children: [
                      IconButton(
                        onPressed: () => _signOut(),
                        icon: Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Keluar',
                        style: TextStyle(color: Colors.red),
                      ),
                    ]),
                  ],
                )),
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
                        )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MobilKecilPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 7, right: 0),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Daftar Mobil 4 Kursi",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MobilBesarPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 7, right: 0),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Daftar Mobil 6 Kursi",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
