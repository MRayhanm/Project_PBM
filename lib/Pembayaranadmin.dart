import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const PembayaranPage());
}

class PembayaranPage extends StatelessWidget {
  const PembayaranPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'Pembayaran',
      home: Scaffold(
        appBar:AppBar(
            title: Text('Status'),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,)),
         ),
        body: Center(
          child: Column(
            children : [
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(148, 255, 255, 255),
                  boxShadow: [BoxShadow(
                  color: Color.fromARGB(255, 223, 223, 223),
                  blurRadius: 20,)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network('https://ad-cms-daihatsu.imgix.net/uploads/productvariant/1592548239190.png?w=1028&h=auto&q=65&fm=jpg&auto=format&fit=max&crop=center',
                      height:100,
                      width: 150,
                    ),
                    SizedBox(height: 10,),
                    Text('Toyota Avanza 2020',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(right: 40),
                      child: Text('Sewa : 2 Hari',style:TextStyle(
                      fontWeight: FontWeight.bold ,))

                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(right: 180),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Nama :             ',style:TextStyle(
                      fontWeight: FontWeight.bold ,)),
                      SizedBox(height: 10,),
                          Text('Alamat :            ',style:TextStyle(
                      fontWeight: FontWeight.bold ,)),
                      SizedBox(height: 10,),
                          Text('No. Handphone : ',style:TextStyle(
                      fontWeight: FontWeight.bold ,)),
                      SizedBox(height: 10,),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 150,),
                    Container(     
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(77, 12, 1, 1),
                        boxShadow: [BoxShadow(
                        color: Color.fromARGB(255, 36, 58, 155),
                        blurRadius: 1,)]
                      ),
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      child: Text('KONFIRMASI PEMBAYARAN',style: TextStyle(
                        color: Color.fromARGB(237, 255, 255, 255),
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Total sewa : Rp. 400.000',style:TextStyle(
                      fontWeight: FontWeight.bold ,)),
                    ),
                    
                  ],
                ),
              ),
                SizedBox(height: 50,),
                Container(
                child: Text('Status : Menunggu Pembayaran',style:TextStyle(
                      fontWeight: FontWeight.bold ,)),
            ),
            ]
          ),
        ),
        
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart,size: 30,),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,size: 50,color: Color.fromARGB(255, 0, 1, 8),),
            label:'  ',     
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.history_edu,size: 30,),
            label: 'Riwayat',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
        showUnselectedLabels: true,
       ),
      )
    );
  }
}