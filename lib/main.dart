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
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      secondary: Colors.amber, // pengganti accentColor
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black87, fontSize: 18), // pengganti bodyText1
      bodyMedium: TextStyle(color: Colors.black54, fontSize: 16), // pengganti bodyText2
      titleLarge: TextStyle(color: Colors.blueAccent, fontSize: 22, fontWeight: FontWeight.bold), // pengganti headline6
    ),
  ),
);

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
