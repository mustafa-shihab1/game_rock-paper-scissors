import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/game_controller.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(
        builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(child: Image.asset(controller.rock,width: 60),
                  onTap: (){
                    controller.changePlayerChoice('rock');
                    controller.generateComputerChoice();
                    controller.getResult();
                  }),
              InkWell(child: Image.asset(controller.scissors,width: 60),
                onTap: (){
                  controller.changePlayerChoice('scissors');
                  controller.generateComputerChoice();
                  controller.getResult();

                },),
              InkWell(child: Image.asset(controller.paper,width: 60),
                onTap: (){
                  controller.changePlayerChoice('paper');
                  controller.generateComputerChoice();
                  controller.getResult();

                },),
            ],
          );
        }
    );
  }
}
