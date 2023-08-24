import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/game_controller.dart';
import 'package:getx_course/widget/custom_chosen.dart';
import 'package:getx_course/widget/custom_options.dart';
import 'package:getx_course/widget/custom_reset_button.dart';
import 'package:getx_course/widget/custom_score_data.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put<GameController>(GameController());
    return  GetBuilder<GameController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Rock Paper Scissors'),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ScoreData(
                        playerName: 'Computer',
                        playerScore: controller.computerScore,
                      ),
                      const Divider(),
                      ScoreData(
                        playerName: 'Mustafa',
                        playerScore: controller.playerScore
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                const Chosen(),
                const Spacer(),
                const Options(),
                const SizedBox(height: 30,),
                const ResetButton(),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        );
      }
    );
  }
}





