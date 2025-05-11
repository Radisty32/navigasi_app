import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Third Page',
          style: Theme.of(context).textTheme.titleLarge, // ganti headline6
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary, // ganti buttonColor
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: TextStyle(fontSize: 18),
          ),
          child: Text(
            'Kembali ke Halaman Utama',
            style: Theme.of(context).textTheme.bodyMedium, // ganti bodyText2
          ),
        ),
      ),
    );
  }
}
