import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_literasi/main_page.dart';
import 'package:e_literasi/pages/detail_page.dart';


class HomePenulis extends StatefulWidget {
  const HomePenulis({super.key});

  @override
  State<HomePenulis> createState() => _HomePenulisState();
}

class _HomePenulisState extends State<HomePenulis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const
        Padding(padding: EdgeInsets.only(top: 5, right:0),
         child:Icon(
          Icons.menu_outlined,
          size: 30,
        ),
        ),
        
        title: const 
        Padding(padding: EdgeInsets.only(top: 16),
         child:Image(
          alignment: Alignment.centerRight,
          image: AssetImage('assets/logonavbar.png'),
          width: 135,
          ),
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
                        return const HomePenulis();
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
      body:  ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.shade100,
                  Colors.blue.shade50,
                  Colors.blue.shade100,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/author.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Eve Florista',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '@evee',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 18), // Add space between texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'WORKS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '1000',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'ੈ✩‧₊˚ to those who read my stories ✧ ೃ༄*ੈ✩ tysm for supporting an inconsistent, unstable writer who\'s just getting around in life *ੈ✩‧₊˚',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Text(
                'Stories by evee',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '4 Published',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
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
                    child : _kontenKaryaHome('assets/novel 3.png', 'Sesuap Rasa', '4.8'),
                  ),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 1.png', 'Dilan 1990', '4.6'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 2.png', 'Berbalas Dendam', '4.4'),
                 SizedBox(width: 10,),
                 _kontenKaryaHome('assets/novel 4.png', 'About Nada', '4.3'),
                 SizedBox(width: 10,),
              ],
            ),
          ), // Add space
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
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 10,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          rating,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ); 
}