import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_literasi/main_page.dart';

class ArsipPage extends StatefulWidget {
  const ArsipPage({super.key});

  @override
  State<ArsipPage> createState() => _ArsipPageState();
}

class _ArsipPageState extends State<ArsipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MainPage();
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
        Padding( padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20,),
                  child: Text(
                    "Perpustakaan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Container(
            decoration:const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  style: BorderStyle.solid
                ))
            ),
            child:  const Column(
              children: [
                 Padding( padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20,),
                        child:  Text(
                          "Maraton yuk, udah antri nih !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 _kontenKaryaArsip('assets/novel 1.jpg', 'Sesuap  Rasa'),
                 SizedBox(width: 15,),
                 _kontenKaryaArsip('assets/komik 2.jpg', 'Jujutsu Kaisen'),
                 SizedBox(width: 15,),
                 _kontenKaryaArsip('assets/novel 6.jpeg', 'Garis Takdir'),
                 SizedBox(width: 15,),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 _kontenKaryaArsip('assets/novel 5.jpeg', 'Beauty in A Click'),
                 SizedBox(width: 15,),
                 _kontenKaryaArsip('assets/novel 3.jpg', 'Berbalas Dendam'),
                 SizedBox(width: 15,),
                 _kontenKaryaArsip('assets/novel 4.jpg', 'Gadis Kretek'),
                 SizedBox(width: 15,),
              ],
            ),
          ),
        ],

      ),
    );
  }
}

Widget _kontenKaryaArsip(String imgPath,String namaKarya){
  return Column(
          children: [
            Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                )
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.menu_book_outlined,
                  size: 20,
                ),
                Icon(
                  Icons.check_outlined,
                  size: 20,
                ),
              ],
            ),
            Text(
                  namaKarya,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          ],
        );
}