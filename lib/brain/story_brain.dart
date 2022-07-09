import 'package:flutter/material.dart';
import 'package:myquizzapp/brain/story.dart';

class StoryLine {
  int storynumber = 0;

  bool buttonshouldbevisible() {
    if (storynumber == 0 ||
        storynumber == 1 ||
        storynumber == 2 ||
        storynumber == 5) {
      return true;
    } else {
      return false;
    }
  }

  void restart() {
    storynumber = 0;
  }

  nextStory(int userchoice) {
    if (userchoice == 1 && storynumber == 0) {
      storynumber = 2;
    } else if (userchoice == 2 && storynumber == 0) {
      storynumber = 1;
    } else if (userchoice == 1 && storynumber == 1) {
      storynumber = 2;
    } else if (userchoice == 2 && storynumber == 1) {
      storynumber = 4;
    } else if (userchoice == 1 && storynumber == 2) {
      storynumber = 3;
    } else if (userchoice == 2 && storynumber == 2) {
      storynumber = 5;
    } else if (userchoice == 1 && storynumber == 5) {
      storynumber = 7;
    } else if (userchoice == 2 && storynumber == 5) {
      storynumber = 6;
    } else {
      restart();
    }
  }

  check() {}
  String getStory() {
    return storyData[storynumber].storyTitle!;
  }

  String getchoice1() {
    return storyData[storynumber].choice1!;
  }

  String getchoice2() {
    return storyData[storynumber].choice2!;
  }

  List<Story> storyData = [
    Story(
        // 0
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?',
        choice1: 'I\'ll hop in. Thanks for the help, replied with hesitation',
        choice2: 'better ask him if he\'s a murderer first.'),
    Story(
        // 1
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2:
            'Wait, I know how to change a tire. You say like you don\'t need help'),
    Story(
        // 2
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his abusive mother. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'In fear, you open the door and jump out of the car',
        choice2: 'It\'s him or me! You take the knife in attempt to stab him.'),
    Story(

        // 3
        storyTitle:
            " due to the speed of car, you roll. You are now injured and the murderer stop his car and run at you with his bloody knife",
        choice1: "Restart",
        choice2: ''),
    Story(
        //4
        storyTitle:
            "Good Work! By not taking the lift, you are saved from the murderer",
        choice1: 'Restart',
        choice2: ''),
    Story(
        //5
        storyTitle:
            'In an attempt to stab the murderer, He blocks you with his one arm but you slowly overpower him and, his eyes are not on the road ',
        choice1: 'You plant your one arm on the wheel',
        choice2: 'You continue to overpower him'),
    Story(
        // 6
        storyTitle:
            'You completely overpower him , stabbing him on the heart and you quickly regain control of the wheel and kick the murderer out of his car',
        choice1: 'Restart',
        choice2: ''),
    Story(
        //7
        storyTitle:
            "when you place your arm on the wheel he takes his power on you and starts to stabs you mercilessly.",
        choice1: 'Restart',
        choice2: ''),
  ];
}
