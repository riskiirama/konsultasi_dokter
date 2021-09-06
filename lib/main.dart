import 'package:flutter/material.dart';
import 'package:konsultasi_dokter/pages/buy_obat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuyObat(),
    );
  }
}
