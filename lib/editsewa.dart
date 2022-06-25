import 'package:awal/Pesananadmin.dart';
import 'package:awal/bottomadmin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditSewa extends StatefulWidget {
  DocumentSnapshot docid;
  EditSewa({required this.docid});

  @override
  _editnoteState createState() => _editnoteState();
}

class _editnoteState extends State<EditSewa> {
  final kembali = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final status = 'Penyewaan Selesai';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text(
          widget.docid.get('atasnama'),
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PesananPage(),
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(68, 138, 255, 1), Colors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Color.fromARGB(255, 245, 245, 245),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Image.network(widget.docid.get('Image')),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.docid.get('mobil'),
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 50.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Warna Mobil  :',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                widget.docid.get('warna'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nomor Polisi  :',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                widget.docid.get('nopol'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nama Penyewa  :',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                widget.docid.get('atasnama'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nomor Telepon  :',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                widget.docid.get('nomor'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tujuan  :',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                widget.docid.get('tujuan'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                widget.docid.get('tanggal'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                              Text("-",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 26)),
                              Text(
                                widget.docid.get('tanggal kembali'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125, right: 125),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Rp.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                              Text(
                                widget.docid.get('tarif'),
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff2ecc71),
                      ),
                      onPressed: () {
                        widget.docid.reference.update({
                          'tanggal kembali': kembali,
                          'status': status,
                        }).whenComplete(() {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => BottomAdminPage()));
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Konfirmasi Pengembalian',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Status  :  ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    Text(
                      widget.docid.get('status'),
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
