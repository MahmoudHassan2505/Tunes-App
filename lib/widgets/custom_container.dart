import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';

class CustomContainer extends StatelessWidget {
  final TuneModel tuneModel;

  const CustomContainer({super.key, required this.tuneModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tuneModel.playSound();
          print("tap" + "${tuneModel.sound}");
        },
        child: Container(
          color: tuneModel.color,
        ),
      ),
    );
  }
}
