import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/game_controller.dart';
class Chosen extends StatelessWidget {
  const Chosen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(
        builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(controller.computerChoice,width: 80),
              const Divider(),
              Image.asset(controller.playerChoice,width: 80),
            ],
          );
        }
    );
  }
}
