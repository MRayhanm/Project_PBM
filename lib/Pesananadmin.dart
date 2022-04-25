import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const PesananPage());
}

class PesananPage extends StatelessWidget {
  const PesananPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'Pesanan',
      home: Scaffold(
        appBar:AppBar(
            title: Text('Data Pesanan'),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,)),
         ),
        body: SafeArea(
          child: Column(
            children:<Widget>[
              Container(  
                margin: EdgeInsets.all(20),                     
                alignment: Alignment.topLeft,
                padding : EdgeInsets.only(left: 10,right:10),
                height: 250,
                width: 430,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  color: Colors.white, 
                  boxShadow: [BoxShadow(
                    color: Color.fromARGB(255, 223, 223, 223),
                    blurRadius: 5,)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child:Text('13 - 3 - 2022'), 
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Color.fromARGB(209, 107, 96, 96),
                          blurRadius: 3,)]
                      ),
                      child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 75,width: 75,),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        children: [
                          Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          SizedBox(height: 10,),
                          Text("Rp 200.000 /hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22,color: Color.fromARGB(255, 221, 78, 78)),),
                          SizedBox(height: 10,),
                          Text("Sewa = 2 Hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                        ]
                      ),
                    ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 430,
                      alignment: Alignment.center,
                      child: Text("Totak Sewa : Rp 200.000 /hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 91, 152, 223))
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Color.fromARGB(255, 0, 212, 110),
                          height:40 ,
                          width: 120,
                          child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Color.fromARGB(255, 212, 14, 0),
                          height:40 ,
                          width: 120,
                          child: Text('TOLAK', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                        )
                      ],
                    )                    
                  ],
                
                ),
              ),

            ]
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,size: 40,color: Color.fromARGB(255, 0, 1, 8),),
            label:'  ',     
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
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