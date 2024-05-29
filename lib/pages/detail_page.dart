import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:e_literasi/main_page.dart';
import 'package:e_literasi/pages/arsip_page.dart';

import 'package:e_literasi/pages/baca_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
        Padding( padding: EdgeInsets.symmetric(horizontal: 70,),
                  child: Text(
                    "Detail Karya",
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('assets/novel 1.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              const Text(
                    "Sesuap Rasa",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),  
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_pin_outlined,
                    size: 15,
                  ),
                  Text(
                    "Catz Link Tristan",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding( padding: EdgeInsets.only(right: 40,),
                      child : Column(
                        children: [
                          Text(
                            "Part",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "5 Parts",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),Padding( padding: EdgeInsets.only(right: 40,),
                      child : Column(
                        children: [
                          Text(
                            "Review",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding( padding: EdgeInsets.only(right: 10,),
                      child : Column(
                        children: [
                          Text(
                            "Part",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return BacaPage();
                      }));
                    },
                    child :Container(
                      padding: const EdgeInsets.all(15),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child : const Padding( padding: EdgeInsets.symmetric(horizontal: 52,),
                        child:  Text(
                          "Mulai Baca !",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),  
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ArsipPage();
                      }));
                    },
                    child : Container(
                      padding: const EdgeInsets.all(15),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child : const Padding( padding: EdgeInsets.symmetric(horizontal: 10,),
                        child:  Icon(
                          Icons.library_add_outlined,
                          size: 30,
                          color: Colors.white,
                        ),  
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                    "Sinopsis",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                    "Sebuah Rasa mengisahkan perjalanan Maya dalam menemukan makna cinta, kesetiaan, dan pengorbanan melalui hubungannya dengan Adrian, seorang pria misterius dengan masa lalu kelam. Mereka terjebak dalam hubungan yang penuh konflik dan rahasia. Dalam perjalanan ini, Maya belajar bahwa cinta tidak selalu mudah diungkapkan dengan kata-kata, tetapi bisa terasa dalam setiap tindakan dan keputusan.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.black,
                    ),
                  ),
                ),
                child : const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_outlined,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      " Prolog",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                        ),
                      ),
                    ),
                    child : const Text(
                      "CHAPTER 1 : Pertemuan",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                        ),
                      ),
                    ),
                    child : const Text(
                      "CHAPTER 2 : Rasa",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                        ),
                      ),
                    ),
                    child : const Text(
                      "CHAPTER 3 : Suka?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}