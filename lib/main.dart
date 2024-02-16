import 'package:flutter/material.dart';
import 'package:tunes_player/pages/home_page.dart';

void main(List<String> args) {
  runApp(const TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
