// lib\second_page.dart
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: Theme.of(context).textTheme.titleLarge, // pengganti headline6
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Theme.of(context).colorScheme.primary, // bukan buttonColor
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: TextStyle(fontSize: 18),
          ),
          child: Text(
            'Kembali ke Halaman Utama',
            style:
                Theme.of(context).textTheme.bodyMedium, // pengganti bodyText2
          ),
        ),
      ),
    );
  }
}
