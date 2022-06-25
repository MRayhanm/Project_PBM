import 'dart:io';
import 'package:awal/bottomadmin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class TambahPesanan extends StatefulWidget {
  @override
  State<TambahPesanan> createState() => _TambahPesananState();
}

class _TambahPesananState extends State<TambahPesanan> {
  File? image;
  TextEditingController mobil = TextEditingController();
  TextEditingController nopol = TextEditingController();
  TextEditingController atasnama = TextEditingController();
  TextEditingController nomor = TextEditingController();
  TextEditingController tujuan = TextEditingController();
  TextEditingController kembali = TextEditingController();
  TextEditingController tarif = TextEditingController();
  TextEditingController warna = TextEditingController();
  final cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final status = 'Dalam Penyewaan';

  CollectionReference ref = FirebaseFirestore.instance.collection('sewa');
  Future openCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    image = File(pickedImage!.path);
    final file = File(pickedImage.path);
    final imageName = '${DateTime.now().millisecondsSinceEpoch}.png';
    final firebaseStorageRef =
        FirebaseStorage.instance.ref().child('images/$imageName');
    final uploadTask = firebaseStorageRef.putFile(file);
    final taskSnapshot = await uploadTask;
    final _fileURL = await taskSnapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance.collection('sewa').add({
      'Image': _fileURL,
      'tanggal': cdate,
      'tanggal kembali': kembali.text,
      'mobil': mobil.text,
      'warna': warna.text,
      'nopol': nopol.text,
      'atasnama': atasnama.text,
      'nomor': nomor.text,
      'tujuan': tujuan.text,
      'tarif': tarif.text,
      'status': status,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 68, 102, 252),
                    onPrimary: Colors.black,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  openCamera();
                },
                child: Container(
                  height: 20,
                  child: Text('Foto KTP'),
                )),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child:
                  Text('Mobil', style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: mobil,
                // controller: _alamat,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child: Text('Warna Mobil',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: warna,
                // controller: _alamat,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child: Text('Nomor Polisi',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: nopol,
                // controller: _durasi,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child: Text('Atas Nama',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: atasnama,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child: Text('Nomor Telepon',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: nomor,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child:
                  Text('Tujuan', style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: tujuan,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child: Text('Tanggal Kembali',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: kembali,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13.0, right: 9.0),
              alignment: Alignment.topLeft,
              child:
                  Text('Tarif', style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: 30,
              width: 380,
              child: TextField(
                controller: tarif,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 255, 255),
                  onPrimary: Colors.black,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => BottomAdminPage()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 7, right: 0),
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Buat Pesanan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
