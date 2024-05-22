import 'package:flutter/material.dart';
import 'package:e_literasi/main_page.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
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
                        return const ProfilPage();
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
      body:Text(
          'This is the Profil Screen',
          style: TextStyle(fontSize: 18),
      ),
    );
  }
}