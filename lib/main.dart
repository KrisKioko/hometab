import 'package:flutter/material.dart';
import './screens/hometab.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade300),
    ),
    home: const MyHomeTab(),
  ),);
}


