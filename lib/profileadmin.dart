import 'package:awal/Riwayatcustomeradmin.dart';
import 'package:awal/editprofiladmin.dart';
import 'package:awal/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProfileadminPage extends StatelessWidget {
  String nama,alamatadmin,nomorhp;

   ProfileadminPage({required this.nama, required this.alamatadmin, required this.nomorhp});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
          ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(  
                padding: EdgeInsets.only(left: 10,right: 0),
                height: 200,
                width: 340,
                alignment: Alignment.centerLeft,
                child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Nama  : ${nama}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
                      Text("Alamat  : ${alamatadmin}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
                      Text("Nomer WA  : ${nomorhp}",style: TextStyle(color: Color.fromARGB(255, 26, 105, 207)),),
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
              SizedBox(height: 5,),
              Container( 
                height: 150,
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
                       Row(
                         children:[  
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return EditprofiladminPage(nama: nama, alamatadmin: alamatadmin, nomorhp: nomorhp,);
                                }));
                              },
                              icon: Icon(Icons.edit_note),                  
                            ),
                            Text('Edit Profil'),
                         ]  
                       ),
                       Row(
                         children:[  
                            IconButton(
                              onPressed: () {                                

                              },
                              icon: Icon(Icons.lock),                  
                            ),
                            Text('Ganti Password'),
                         ]  
                       ),
                      Row(
                         children:[  
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const FirstPage();
                                }));
                              },
                              icon: Icon(Icons.logout, color: Colors.red,),                  
                            ),
                            Text('Keluar', style: TextStyle(color: Colors.red),),
                         ]  
                       ),
                    ],
                  )
              ),              
              Container(
                padding: EdgeInsets.only(left:7, right:0),
                height:40,
                alignment: Alignment.topLeft,
                child: Text("Daftar Mobil",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
              ),
              Container(
                
                height: 280,
                color: Color.fromARGB(255, 245, 245, 245),
                child:ListView(
                    children: <Widget>[
                      Container(                         
                          alignment: Alignment.bottomLeft,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white, 
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 223, 223, 223),
                              blurRadius: 5,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 70,
                            minHeight: 70,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.network('https://img.inews.co.id/media/600/files/inews_new/2021/01/24/pajero_sports_2021.jpg',),    
                            iconSize: 100,                     
                          ),),
                          title: Text("Pajero Sport", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("6 kursi"),
                          ),
                      ),
                      Container(                         
                          alignment: Alignment.bottomLeft,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white, 
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 223, 223, 223),
                              blurRadius: 5,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 70,
                            minHeight: 70,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.network('https://ad-cms-daihatsu.imgix.net/uploads/productvariant/1592548239190.png?w=1028&h=auto&q=65&fm=jpg&auto=format&fit=max&crop=center',),    
                            iconSize: 100,                     
                          ),),
                          title: Text("Daihatsu Terios", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("6 kursi"),
                          ),
                      ),
                      SizedBox(height: 3,),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 223, 223, 223),
                              blurRadius: 5,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 70,
                            minHeight: 70,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.network('https://img.cintamobil.com/2021/12/09/tYG8w8tv/ertiga-4-d75d-55f4.jpg',), 
                            iconSize: 100,                        
                          ),),
                          title: Text("Suzuki Ertiga", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("6 kursi"),
                        ),
                      ),
                      SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(255, 223, 223, 223),
                              blurRadius: 5,
                            )]
                          ),
                          child: ListTile(
                          leading: ConstrainedBox(constraints: 
                          BoxConstraints(
                            minWidth: 70,
                            minHeight: 70,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',), 
                            iconSize: 100,                
                          ),),
                          title: Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          subtitle: Text("6 kursi"),
                        ),
                      )
                    ],
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
               ]
               ),
        
        ),
        
      ),
    );
  }
}