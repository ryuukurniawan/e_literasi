import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:e_literasi/pages/login_page.dart'; // Import the LoginPage

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Introduction'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.all(16),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Menulis',
          body:
              'Buat Karya disini !',
          image: Image.asset(
            'assets/gambar1.png',
            width: 350,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Baca Dimana Saja !',
          body:
              'Baca dimana saja, kapanpun dengan gadgetmu',
          image: Image.asset(
            'assets/gambar2.png',
            width: 350,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Kembangkan Skill Anda !',
          body:
              'Ayo bergabung sekarang bersama Kami ! ',
          image: Image.asset(
            'assets/gambar3.png',
            width: 350,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage()),
        );
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.bold)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.grey,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }
}
