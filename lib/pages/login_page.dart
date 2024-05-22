import 'package:e_literasi/main_page.dart';
import 'package:flutter/material.dart';
// Mengimpor halaman EditProfilePage
import 'register_page.dart'; // Mengimpor halaman RegisterPage

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the icon is pressed
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 16.0), // Menambahkan padding vertikal
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Gambar di atas
                Image.asset(
                  'assets/gambar4.png',
                  height: 150,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
                const SizedBox(height: 20),
                // Garis horizontal
                const Divider(thickness: 1, color: Colors.grey),
                const SizedBox(height: 20),
                // Teks "Sign In"
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                // Kolom Email
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Kolom Password
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Tombol Sign In
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (
                    ) {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()),
                    );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna latar belakang
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Teks Forgot password?
                TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 10),
                // Teks Create an account
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text(
                    'Create an account',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
