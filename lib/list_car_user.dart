import 'package:awal/car_description.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarlistPage());
}

class CarlistPage extends StatelessWidget {
  const CarlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                Container(
                  height: 277,
                  width: 400,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)),
                    image: DecorationImage(
                      image: AssetImage('assets/2.jpg'),
                      fit: BoxFit.fill)
                  ),
                  
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  height: 40,
                  color: const Color.fromARGB(255, 245, 245, 245),
                  alignment: Alignment.centerLeft,
                  child: Text("Mobil",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                ),
                Container(
                  color: Color.fromARGB(255, 245, 245, 245),
                  height: 400,
                  child: ListView(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 100,
                            minHeight: 260,
                            maxWidth: 150,
                            maxHeight: 264,
                          ),
                          child: Image.asset('assets/1.jpg',
                          fit: BoxFit.fill ,),),
                          title: Text("Daihatsu Terios", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("Manual"),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return CarDescription();
                            }));
                          },
                        ),
                      ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 100,
                            minHeight: 260,
                            maxWidth: 150,
                            maxHeight: 264,
                          ),
                          child: Image.asset('assets/avanza.jpg',
                          fit: BoxFit.fill ,),),
                          title: Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("Manual"),
                        ),
                      ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 100,
                            minHeight: 260,
                            maxWidth: 150,
                            maxHeight: 264,
                          ),
                          child: Image.asset('assets/avanza2.jpg',
                          fit: BoxFit.fill ,),),
                          title: Text("Daihatsu Xenia", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("Manual"),
                        ),
                      ),
                          Container(
                          alignment: Alignment.centerLeft,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 83, 83, 83),
                              blurRadius: 3,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 100,
                            minHeight: 260,
                            maxWidth: 150,
                            maxHeight: 264,
                          ),
                          child: Image.asset('assets/avanza2.jpg',
                          fit: BoxFit.fill ,),),
                          title: Text("Daihatsu Xenia", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("Manual"),
                        ),
                      ),
                    ],
                  ),
                )
                // Container(
                //     height: 355,
                //     width: 500,
                //     decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 245, 245, 245)),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Row(     
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,               
                //             children: [
                //               Container(
                //               decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20),
                //               boxShadow: const [BoxShadow(
                //                   color: Color.fromARGB(255, 165, 165, 165),
                //                   blurRadius: 5,
                //                 ),
                //               ],
                //               color: Colors.white,
                //               ),
                //               height: 160,
                //               width: 160,
                //               child: SizedBox(
                //                 child: Column(
                //                   children: [
                //                     Container(
                //                       height: 130,
                //                       child: IconButton(
                //                         onPressed: () {},
                //                         icon: Image.asset('assets/brio-red.jpg'),
                //                         alignment: Alignment.topCenter,
                //                         iconSize: 180,
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Row(
                //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                //                           Text("25%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //               ),
                //               Container(
                //                 decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(20),
                //                 boxShadow: const [BoxShadow(
                //                   color: Color.fromARGB(255, 165, 165, 165),
                //                   blurRadius: 5,
                //                 ),
                //               ],
                //                 color: Colors.white,
                //               ),
                //                 height: 160,
                //                 width: 160,
                //               child: SizedBox(
                //                 child: Column(
                //                   children: [
                //                     Container(
                //                       height: 130,
                //                       child: IconButton(
                //                         onPressed: () {},
                //                         icon: Image.asset('assets/jazz-old.jpg'),
                //                         alignment: Alignment.topCenter,
                //                         iconSize: 180,
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Row(
                //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                //                           Text("40%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //               )
                //                 ],),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Row(     
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,               
                //             children: [
                //               Container(
                //               decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20),
                //               boxShadow: const [BoxShadow(
                //                   color: Color.fromARGB(255, 165, 165, 165),
                //                   blurRadius: 5,
                //                 ),
                //               ],
                //               color: Colors.white,
                //               ),
                //               height: 160,
                //               width: 160,
                //               child: SizedBox(
                //                 child: Column(
                //                   children: [
                //                     Container(
                //                       height: 130,
                //                       child: IconButton(
                //                         onPressed: () {},
                //                         icon: Image.asset('assets/1.jpg'),
                //                         alignment: Alignment.topCenter,
                //                         iconSize: 180,
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Row(
                //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                //                           Text("25%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //               ),
                //               Container(
                //                 decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(20),
                //                 boxShadow: const [BoxShadow(
                //                   color: Color.fromARGB(255, 165, 165, 165),
                //                   blurRadius: 5,
                //                 ),
                //                 ],
                //                 color: Colors.white,
                //               ),
                //                 height: 160,
                //                 width: 160,
                //               child: SizedBox(
                //                 child: Column(
                //                   children: [
                //                     Container(
                //                       height: 130,
                //                       child: IconButton(
                //                         onPressed: () {},
                //                         icon: Image.asset('assets/avanza.jpg'),
                //                         alignment: Alignment.topCenter,
                //                         iconSize: 180,
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Row(
                //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Text("Promo",style: TextStyle(fontWeight: FontWeight.w800),),
                //                           Text("10%", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.red),)
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //               )
                //                 ],),
                //         ),
                //       ],
                //     ),
                //   ),
                // Container(
                //   color: const Color.fromARGB(255, 245, 245, 245),
                //   height: 120,
                //   child: Padding(
                //     padding: const EdgeInsets.all(27.8),
                    
                //     child: Container(
                //       color: const Color.fromARGB(255, 245, 245, 245),
                //       height: 55,
                //       child: ElevatedButton(
                //         onPressed: () {}, 
                //         style: ElevatedButton.styleFrom(
                //           primary: Colors.white,
                //           onPrimary: Colors.black,
                //           shadowColor: Colors.black,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(30),
                            
                //           )
                //         ),
                //         child: Container(
                //           alignment: Alignment.center,
                //           height: 10,
                //           width: 350,
                //           child: const Text("Kategori Mobil", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300,),
                //         )),
                //     ),
                //   )
                //   ),
                // )],
              ]),
        ),
        
        
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riawayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
        showUnselectedLabels: true,
       ),
      ),
    );
  }
}