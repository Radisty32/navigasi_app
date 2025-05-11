import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  widget build(Buildcontext context) {
    return MaterialApp(
      title: 'Navigasi App',
      theme: ThemeData(
        primarySwatch: colors.blue, 
        
      ),
    )
  }
}