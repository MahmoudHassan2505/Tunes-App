import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import 'package:tunes_player/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.amber, sound: 'note4.wav'),
    TuneModel(color: Colors.red, sound: 'note5.wav'),
    TuneModel(color: Colors.green, sound: 'note6.wav'),
    TuneModel(color: Colors.black, sound: 'note7.wav'),
  ];

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff26313A),
        elevation: 0,
        title: const Text(
          "Tunes App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunes
            .map((e) => CustomContainer(
                  tuneModel: e,
                ))
            .toList(),
      ),
    );
  }

  // List<CustomContainer> getTuneContainer() {
  //   List<CustomContainer> tuneItems = [];
  //   for (var color in tuneColor) {
  //     tuneItems.add(CustomContainer(color: color));
  //   }
  //   return tuneItems;
  // }
}
