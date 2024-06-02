import 'package:e_literasi/main_page.dart';
import 'package:e_literasi/main_penulis.dart';
import 'package:e_literasi/pages/detail_page.dart';
//import 'package:e_literasi/pages/home_penulis_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
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
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailPage();
                      }));
                    },
                    child : _kontenKaryaKhusus('assets/komik 5.jpg', 'Kindergarten WARS', """Welcome to Kindergarten Noir."""),
                  ),
                 SizedBox(width: 15,),
                 _kontenKaryaKhusus('assets/komik 6.jpg', 'Dogsred', 'The stage is the proud land of the north-Hokkaido.'),
                 SizedBox(width: 15,),
                 _kontenKaryaKhusus('assets/komik 7.jpg', 'Okuni University Art Department Film Program', 'Having won a film award in high school.'),
                 SizedBox(width: 15,),
                  
              ],
            ),
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
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child :Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailPage();
                        }));
                      },
                      child : _kontenKaryaPopuler('assets/top 1.png','assets/komik 8.jpg', 'Naruto', """The adventure begins now!"""),
                    ),
                  SizedBox(height: 10,),
                  _kontenKaryaPopuler('assets/top 2.png','assets/komik 10.jpg', 'Bleach', 'Ichigo Kurosaki has able to see ghosts.'),
                  SizedBox(height: 10,),
                  _kontenKaryaPopuler('assets/top 3.png','assets/komik 11.jpg', 'Dragon Ball', 'Goku the adventure of a lifetime.'),
                  SizedBox(height: 10,),
                  _kontenKaryaPopuler('assets/top 4.png','assets/komik 12.jpg', 'Haikyu!!', '"the King of the Court," Shoyo Hinata.'),
                  SizedBox(height: 10,),
                  _kontenKaryaPopuler('assets/top 5.png','assets/komik 9.jpg', 'Kagurabachi', '6 Katana Sihir.'),
                  SizedBox(height: 10,),
                    
                ],
              ),
            ),
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
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              scrollDirection: Axis.horizontal,
              children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailPage();
                      }));
                    },
                    child : _kontenKaryaHome('assets/komik 1.jpg', 'One Piece', '4.9'),
                  ),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/komik 2.jpg', 'Jujutsu Kaisen', '4.5'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/komik 3.jpg', 'Hero Academia', '4.3'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/komik 4.jpg', 'dandadan', '4.9'),
                 SizedBox(width: 10,),
              ],
            ),
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
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              scrollDirection: Axis.horizontal,
              children: [
                 GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailPage();
                      }));
                    },
                    child : _kontenKaryaHome('assets/novel 1.jpg', 'Sesuap Rasa', '4.8'),
                  ),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 2.jpg', 'Dilan 1990', '4.6'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 3.jpg', 'Berbalas Dendam', '4.4'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 4.jpg', 'Gadis Kretek', '4.3'),
                 SizedBox(width: 10,),
              ],
            ),
          ),
        ],  
      ),
    );
  }
}

Widget _kontenKaryaHome(String imgPath,String namaKarya,String rating){
  return Column(
                  children: [
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Text(
                          namaKarya,
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
                          rating,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ); 
}

Widget _kontenKaryaKhusus(String imgPath,String namaKarya,String deskripsiKarya){
  return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                )
              ),
            ),
            const SizedBox(height: 5),
            Text(
              namaKarya,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              deskripsiKarya,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),    
          ],
        ); 
}

Widget _kontenKaryaPopuler(String imgRank,String imgPath,String namaKarya,String deskripsiKarya){
  return Row(
          children: [
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgRank),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              height: 90,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                )
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namaKarya,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  deskripsiKarya,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),    
              ],

            ),
          ],
        ); 
}


  
