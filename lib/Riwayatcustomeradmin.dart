import 'package:awal/profileadmin.dart';
import 'package:awal/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const RiwayatadminPage ());
}

class RiwayatadminPage extends StatelessWidget {
  const RiwayatadminPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'Riwayat Customer',
      home: Scaffold(
        appBar:AppBar(
            title: Text('Riwayat Transaksi'),
         ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 656,
                child: ListView(
                  children:<Widget>[
                    Container(  
                      margin: EdgeInsets.all(20),                     
                      alignment: Alignment.topLeft,
                      padding : EdgeInsets.only(left: 10,right:10),
                      height: 260,
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
                            alignment: Alignment.topRight,
                            child:IconButton(
                                    onPressed: () {                      
                      //     Navigator.push(context, MaterialPageRoute(builder: (context){
                      //     return MapSample();
                      // }));
                        },
                                    icon: Icon(Icons.delete), ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(209, 107, 96, 96),
                                blurRadius: 3,)]
                            ),
                            child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 80,width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30,left: 10),
                            child: Column(
                              children: [
                                Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                              ]
                            ),
                          ),
                              ],
                            ),
                          ),
                          Container(  
                            height: 45,
                            width: 430,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Tanggal", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text("14-3-2022  -   16-3-2022", style: TextStyle( fontSize: 18)),
                              ],
                            )
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10,top:10 ),
                                alignment: Alignment.center,
                                height:40 ,
                                width: 320,
                                child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 91, 152, 223))
                              ),
                            ],
                          )                    
                        ],
                      
                      ),
                    ),
                    Container(  
                      margin: EdgeInsets.all(20),                     
                      alignment: Alignment.topLeft,
                      padding : EdgeInsets.only(left: 10,right:10),
                      height: 260,
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
                            alignment: Alignment.topRight,
                            child:IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete), ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(209, 107, 96, 96),
                                blurRadius: 3,)]
                            ),
                            child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 80,width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30,left: 10),
                            child: Column(
                              children: [
                                Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                              ]
                            ),
                          ),
                              ],
                            ),
                          ),
                          Container(  
                            height: 45,
                            width: 430,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Tanggal", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text("14-3-2022  -   16-3-2022", style: TextStyle( fontSize: 18)),
                              ],
                            )
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10,top:10 ),
                                alignment: Alignment.center,
                                height:40 ,
                                width: 320,
                                child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 91, 152, 223))
                              ),
                            ],
                          )                    
                        ],
                      
                      ),
                    ),
                    Container(  
                      margin: EdgeInsets.all(20),                     
                      alignment: Alignment.topLeft,
                      padding : EdgeInsets.only(left: 10,right:10),
                      height: 260,
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
                            alignment: Alignment.topRight,
                            child:IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete), ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(209, 107, 96, 96),
                                blurRadius: 3,)]
                            ),
                            child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 80,width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30,left: 10),
                            child: Column(
                              children: [
                                Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                              ]
                            ),
                          ),
                              ],
                            ),
                          ),
                          Container(  
                            height: 45,
                            width: 430,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Tanggal", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text("14-3-2022  -   16-3-2022", style: TextStyle( fontSize: 18)),
                              ],
                            )
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10,top:10 ),
                                alignment: Alignment.center,
                                height:40 ,
                                width: 320,
                                child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 91, 152, 223))
                              ),
                            ],
                          )                    
                        ],
                      ),
                    ),
                    Container(  
                      margin: EdgeInsets.all(20),                     
                      alignment: Alignment.topLeft,
                      padding : EdgeInsets.only(left: 10,right:10),
                      height: 260,
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
                            alignment: Alignment.topRight,
                            child:IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete), ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(209, 107, 96, 96),
                                blurRadius: 3,)]
                            ),
                            child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 80,width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30,left: 10),
                            child: Column(
                              children: [
                                Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                              ]
                            ),
                          ),
                              ],
                            ),
                          ),
                          Container(  
                            height: 45,
                            width: 430,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Tanggal", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text("14-3-2022  -   16-3-2022", style: TextStyle( fontSize: 18)),
                              ],
                            )
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10,top:10 ),
                                alignment: Alignment.center,
                                height:40 ,
                                width: 320,
                                child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 91, 152, 223))
                              ),
                            ],
                          )                    
                        ],
                      
                      ),
                    ),Container(  
                      margin: EdgeInsets.all(20),                     
                      alignment: Alignment.topLeft,
                      padding : EdgeInsets.only(left: 10,right:10),
                      height: 260,
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
                            alignment: Alignment.topRight,
                            child:IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete), ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(209, 107, 96, 96),
                                blurRadius: 3,)]
                            ),
                            child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 80,width: 95,),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30,left: 10),
                            child: Column(
                              children: [
                                Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                              ]
                            ),
                          ),
                              ],
                            ),
                          ),
                          Container(  
                            height: 45,
                            width: 430,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Tanggal", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text("14-3-2022  -   16-3-2022", style: TextStyle( fontSize: 18)),
                              ],
                            )
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: (){
                                  
                                },
                                child: Container(
                                padding: EdgeInsets.only(bottom: 10,top:10 ),
                                alignment: Alignment.center,
                                height:40 ,
                                width: 320,
                                child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 91, 152, 223))
                              ),)
                            ],
                          )
                        ],
                      
                      ),
                    ),

                  ]
                ),
              ),
                              Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 61,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.add_chart)),
                      IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.add_circle,size: 50,color: Color.fromARGB(255, 0, 1, 8),)),
                      IconButton(
                        onPressed: (){                      
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const RiwayatadminPage();
                      }));
                        },
                        icon: Icon(Icons.history_outlined))
                    ],
                  ),
                )
            ],
          ),
          
        ),

      )
    );
  }
}