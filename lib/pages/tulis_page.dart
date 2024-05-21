import 'package:e_literasi/pages/upload_karya.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TulisPage extends StatefulWidget {
  const TulisPage({super.key});

  @override
  State<TulisPage> createState() => _TulisPageState();
}

class _TulisPageState extends State<TulisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Write',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UploadKarya()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          BookItem(name: 'Dandadan', imagePath: 'assets/komik 4.png'),
          BookItem(name: 'Seperti Dendam', imagePath: 'assets/novel 2.png'),
          BookItem(name: 'About Nada', imagePath: 'assets/novel 4.png'),
          BookItem(name: 'Sesuap Rasa', imagePath: 'assets/novel 3.png'),
        ],
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const BookItem({Key? key, required this.name, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        height: 80,
      ),
      title: Text(name),
      trailing: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // Tambahkan aksi ketika ikon opsi ditekan
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TulisPage(),
  ));
}