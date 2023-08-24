import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/game_controller.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(
        builder: (controller) {
          return CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue[100],
            child: IconButton(
              onPressed: (){
                controller.resetGame();
              },
              icon: const Icon(Icons.refresh),
            ),
          );
        }
    );
  }
}
