import 'package:e_literasi/pages/detail_page.dart';
import 'package:e_literasi/pages/komentar_page.dart';
import 'package:flutter/material.dart';

class BacaPage extends StatefulWidget {
  const BacaPage({super.key});

  @override
  State<BacaPage> createState() => _BacaPageState();
}

class _BacaPageState extends State<BacaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailPage();
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
        Padding( padding: EdgeInsets.symmetric(horizontal: 70,),
                  child: Text(
                    "Baca Karya",
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
          Container(
            height: 160,
            
            decoration: const BoxDecoration(
              image: DecorationImage(
                    image: AssetImage('assets/detailnovel 3.png'),
                    fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            textAlign: TextAlign.center,
            " Prolog",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(padding:EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                """Maya, seorang wanita muda yang penuh dengan impian dan harapan, tidak pernah menduga bahwa cinta akan membawanya ke dalam labirin yang rumit dan penuh rahasia. Ketika dia bertemu dengan Adrian, seorang pria misterius dengan aura yang menarik, dunianya berubah secara mendadak. Namun, di balik pesona Adrian, tersembunyi masa lalu yang kelam dan rahasia yang belum terungkap. Perjalanan Maya dalam menemukan makna cinta dimulai ketika dia mulai menyadari bahwa hubungannya dengan Adrian tidaklah mudah. Konflik dan pertengkaran sering melanda, dan Maya merasa seperti terjebak dalam pusaran emosi yang tak terduga. Namun, di tengah-tengah kekacauan itu, ada kekuatan yang mengikatnya pada Adrian, sesuatu yang dia tak bisa jelaskan dengan kata-kata.""", 
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
          ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
          padding: const EdgeInsets.all(0),
          decoration: 
          const BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Colors.grey,
              ),
            ),
          ),
          child :  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const KomentarPage();
                      }));
                    },
                  child :const Icon(
                    Icons.comment_outlined,
                    size: 35,
                  ),
                  ),
                  const Text(
                    "Komentar",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Icon(
                    Icons.star_outlined,
                    size: 35,
                  ),
                  Text(
                    "Voting",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailPage();
                      }));
                    },
                  child:const Icon(
                    Icons.book_outlined,
                    size: 35,
                  ),
                  ),
                  const Text(
                    "Chapter",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          )
          
        )
        ],
      ),
      
      

    );
  }
}