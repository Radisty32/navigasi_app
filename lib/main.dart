import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi dengan Tema',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama aplikasi
        accentColor: Colors.amber, // Warna aksen untuk tombol, ikon, dll
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black87, fontSize: 18),
          bodyText2: TextStyle(color: Colors.black54, fontSize: 16),
          headline6: TextStyle(color: Colors.blueAccent, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue, // Warna tombol
          textTheme: ButtonTextTheme.primary, // Warna teks tombol
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(), // Menambahkan rute untuk halaman ketiga
      },
    );
  }
}
