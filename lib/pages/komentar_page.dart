import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_literasi/pages/baca_page.dart';


class KomentarPage extends StatefulWidget {
  const KomentarPage({super.key});

  @override
  State<KomentarPage> createState() => _KomentarPageState();
}

class _KomentarPageState extends State<KomentarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return BacaPage();
            }));
          },
          child :const Padding(padding: EdgeInsets.only(top: 5, left: 20),
          child:Icon(
            Icons.arrow_back_outlined,
            size: 30,
          ),
          ),
        ),
        title: const
        Padding( padding: EdgeInsets.symmetric(horizontal: 85,),
                  child: Text(
                    "~Prolog~",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
            Column(
            children: [
              _kontenKomentar('assets/user 1.png','Chenistra12',"""baru buka dan baca udah dibuat nangis aja 😭😭💔""", '12 May'),
              SizedBox(width: 20,),
              _kontenKomentar('assets/user 2.png', 'Bubuyyy',"""thor! bisa enggak sih upload nya satu hari 5 part 🥹🤩""", '15 May'),
              SizedBox(width: 20,),
              _kontenKomentar('assets/user 3.png', 'Dorita00',"""ceritanya seru bangettttt!!!!!""",'20 May'),
              SizedBox(width: 20,),
              _kontenKomentar('assets/user 4.png', 'Jiwonya17',"""semangat thor upload nya 🥰🥰""",'1 April'),
              SizedBox(width: 20,),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 170),
                child : Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child :Form(
                        child:Column(
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  icon: Icon(Icons.comment_outlined),
                                  labelText: "Tulis Komentar",
                                ),
                              )
                            ),
                            
                          ],

                        ) 
                      ),
                    ),

              ),
              
            ],
          )
        ],
      ),
    );
  }
}

Widget _kontenKomentar(String imgPath,String namaUser,String komentarUser,String tanggalKomentar){
  return Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset(imgPath),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namaUser,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                          komentarUser,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      
                        Row(
                          children: [
                            Text(
                              tanggalKomentar,
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Reply",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 145, 226, 231)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],    
                )
              );  
}