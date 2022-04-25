import 'package:flutter/material.dart';

void main() {
  runApp(const PengembalianPage());
}


class PengembalianPage extends StatefulWidget {
  const PengembalianPage({Key? key}) : super(key: key);
  @override
  State<PengembalianPage> createState() => _PengembalianPageState();
}

class _PengembalianPageState extends State<PengembalianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Status"),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Color.fromRGBO(178, 190, 195, 1),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.asset('lib/assets/car.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Toyota Avanza 2020',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sewa = 2 hari',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nama : Dimas",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Alamat : Jember",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "No. hp : 087777373737",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Total Sewa : Rp. 1000000",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Pengembalian: 15-4-2022',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff2ecc71),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'KONFIRMASI PENGEMBALIAN',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff6F1E51),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'LACAK LOKASI',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Status: Sedang Dalam Penyewaan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
