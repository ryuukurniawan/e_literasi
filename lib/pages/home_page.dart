import 'dart:convert';

import 'package:e_literasi/main_page.dart';
import 'package:e_literasi/main_penulis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _listkaryahits=[];
  List _listkaryapopuler=[];
  List _listkaryakomik=[];
  List _listkaryanovel=[];
  List _rankingimage=[
    'assets/top 1.png',
    'assets/top 2.png',
    'assets/top 3.png',
    'assets/top 4.png',
    'assets/top 5.png'
  ];

  Future _karyahits() async{
    try {
      final respon =
        await http.get(Uri.parse('http://192.168.1.5/app_eliterasi/datakaryahits.php'));
      if (respon.statusCode==200){
        final data = jsonDecode(respon.body);
        setState(() {
          _listkaryahits = data;
    
        });
      }
    } catch (e) {
      print (e);
    } 
  }

  Future _karyapopuler() async{
    try {
      final respon2 =
        await http.get(Uri.parse('http://192.168.1.5/app_eliterasi/datakaryapopuler.php'));
      if (respon2.statusCode==200){
        final data2 = jsonDecode(respon2.body);
        setState(() {
          _listkaryapopuler = data2;
    
        });
      }
    } catch (e) {
      print (e);
    } 
  }

  Future _karyakomik() async{
    try {
      final respon3 =
        await http.get(Uri.parse('http://192.168.1.5/app_eliterasi/datakaryakomik.php'));
      if (respon3.statusCode==200){
        final data3 = jsonDecode(respon3.body);
        setState(() {
          _listkaryakomik = data3;
    
        });
      }
    } catch (e) {
      print (e);
    } 
  }

  Future _karyanovel() async{
    try {
      final respon4 =
        await http.get(Uri.parse('http://192.168.1.5/app_eliterasi/datakaryanovel.php'));
      if (respon4.statusCode==200){
        final data4 = jsonDecode(respon4.body);
        setState(() {
          _listkaryanovel = data4;
    
        });
      }
    } catch (e) {
      print (e);
    } 
  }

 void initState(){
    _karyahits();
    _karyakomik();
    _karyanovel();
    _karyapopuler();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const
        Padding(padding: EdgeInsets.only(top: 5,left: 10, right: 0),
          child:Image(
          alignment: Alignment.centerRight,
          image: AssetImage('assets/logo.png'),
          ),
        ),
        title: const 
        Padding(padding: EdgeInsets.only(top: 16,bottom: 10),
         child:Text(
          'E-literasi',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ) ,
         )
        ),
        actions: [
         PopupMenuButton(itemBuilder:(context){
            return[
              PopupMenuItem(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const MainPage();
                      }));
                    },
                    child :Text(
                      "Pembaca"
                    )
                  )    
              ),
              PopupMenuItem(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const MainPenulis();
                      }));
                    },
                    child :Text(
                      "Penulis"
                    )
                  )    
              ),
            ];
          })
        ],
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body:ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.purple.shade100,
                    Colors.blue.shade50,
                    Colors.blue.shade100,
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi User !",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                   const SizedBox(
                      height: 5,
                    ),
                   const Text(
                      "Mulai baca hari ini dengan secangkir kopi...",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    const SizedBox(
                    height: 10,
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child :Form(
                        child:Column(
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  icon: Icon(Icons.search_outlined),
                                  labelText: "Cari Karya",
                                ),
                              )
                            ),
                            
                          ],

                        ) 
                      ),
                    ),
                  ],
              ),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
                        child: Text(
                          "Kategori",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/aksi.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                      width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/romantis.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                      width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Container(
                  margin: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/komedi.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                      width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),

                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/horor.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                      width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/fantasi.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                      width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/drama.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
             children : [
                  Padding( padding: EdgeInsets.only(left: 45,top: 5),
                        child: Text(
                          "Aksi",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                  Padding( padding: EdgeInsets.only(left: 25,top: 5),
                        child: Text(
                          "Romantis",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                  Padding( padding: EdgeInsets.only(left: 18,top: 5),
                        child: Text(
                          "Komedi",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                  Padding( padding: EdgeInsets.only(left: 22,top: 5),
                        child: Text(
                          "Horror",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                  Padding( padding: EdgeInsets.only(left: 25,top: 5),
                        child: Text(
                          "Fantasi",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                  Padding( padding: EdgeInsets.only(left: 25,top: 5),
                        child: Text(
                          "Drama",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
                ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10,),
                        child: Text(
                          "Yang lagi hits !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
            ],
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              itemCount: _listkaryahits.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:((context, index){
                return Row(
                  children :[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 360,
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage("http://192.168.1.5/app_eliterasi/uploads/${_listkaryahits[index]['Display']}"),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          _listkaryahits[index]['Judul'],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          _listkaryahits[index]['Sinopsis'],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),    
                      ],
                    ),
                    SizedBox(width: 15,)
                  ]
                ); 
              }),
              )
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10,),
                        child: Text(
                          "List Terpopuler !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
            ],
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _listkaryapopuler.length,
              itemBuilder: ((context, index){
                final rankImg = _rankingimage[index % _rankingimage.length];
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(rankImg),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 90,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: NetworkImage("http://192.168.1.5/app_eliterasi/uploads/${_listkaryapopuler[index]['Cover']}"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _listkaryapopuler[index]['Judul'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              _listkaryapopuler[index]['Sinopsis'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),    
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }),
            )
          ),
          
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10,),
                        child: Text(
                          "Rekomendasi cuma untuk kamu !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Komik nih..",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              itemCount: _listkaryakomik.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index){
                return Row(
                  children :[
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage("http://192.168.1.5/app_eliterasi/uploads/${_listkaryakomik[index]['Cover']}"),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        Text(
                              _listkaryakomik[index]['Judul'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 12,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '5.0',
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 10,),
                  ]
                );
              })
            )
          ),
          const SizedBox(
            height: 15,
          ),
          
          SizedBox(
            height: 10,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
                  Padding( padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Kalau ini novel yaa..",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                  ),
            ],
          ),
          const SizedBox(
            height: 15,
            ),
            SizedBox(
            height: 220,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              itemCount: _listkaryanovel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index){
                return Row(
                  children :[
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage("http://192.168.1.5/app_eliterasi/uploads/${_listkaryanovel[index]['Cover']}"),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        Text(
                              _listkaryanovel[index]['Judul'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 12,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '5.0',
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 10,),
                  ]
                );
              })
            )
          ),
          const SizedBox(
            height: 15,
            ),
        ],  
      ),
    );
  }
}





  
