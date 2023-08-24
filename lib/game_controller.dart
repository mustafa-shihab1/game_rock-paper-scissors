
import 'dart:math';

import 'package:get/get.dart';

class GameController extends GetxController {
  late int playerScore ;
  late int  computerScore ;
  late String playerChoice;
  late String computerChoice;
  String rock = 'assets/rock.png';
  String paper = 'assets/paper.png';
  String scissors = 'assets/scissors.png';

  @override
  void onInit() {
    playerScore = 0;
    computerScore = 0;
    playerChoice = rock;
    computerChoice = rock;
    super.onInit();
  }

  changePlayerChoice(playerChoice){
    switch(playerChoice){
      case 'rock':
        this.playerChoice = rock;
        break;
      case 'paper':
        this.playerChoice = paper;
        break;
      case 'scissors':
        this.playerChoice = scissors;
        break;
    }
    update();
  }

  generateComputerChoice(){
    var choices = [rock,paper,scissors];
    var random = Random();
    computerChoice = choices[random.nextInt(3)];
    update();
  }

  void incrementPlayerScore() {
    playerScore++;
    update();
  }

  void incrementComputerScore() {
    computerScore++;
    update();
  }

  getResult(){
    if(playerChoice == rock && computerChoice == scissors){
      incrementPlayerScore();
    }else if(playerChoice == scissors && computerChoice == paper){
      incrementPlayerScore();
    }else if(playerChoice == paper && computerChoice == rock){
      incrementPlayerScore();
    }else if(playerChoice == computerChoice){
      //do nothing
    }else{
      incrementComputerScore();
    }
  }

  resetGame(){
    playerScore = 0;
    computerScore = 0;
    update();
  }
}

