import 'package:flutter/material.dart';

class ScoreData extends StatelessWidget {
  final String playerName;
  final int playerScore;

  const ScoreData({
    required this.playerName,
    required this.playerScore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(playerName,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        const SizedBox(height: 10,),
        Text('$playerScore',style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }
}
