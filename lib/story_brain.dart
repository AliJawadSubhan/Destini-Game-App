import 'package:myquizzapp/story.dart';
import 'package:flutter/material.dart';

class StoryLine {
  int storynumber = 0;

  bool buttonshouldbevisible() {
    if (storynumber == 0 || storynumber == 1 || storynumber == 2) {
      return true;
    } else {
      return false;
    }
  }

  Widget? restart() {
    storynumber = 0;
    return Dialog();
  }

  nextStory(int userchoice) {
    if (userchoice == 1 && storynumber == 0) {
      storynumber = 2;
    } else if (userchoice == 2 && storynumber == 0) {
      storynumber = 1;
    } else if (userchoice == 1 && storynumber == 1) {
      storynumber = 2;
    } else if (userchoice == 2 && storynumber == 1) {
      storynumber = 3;
    } else if (userchoice == 1 && storynumber == 2) {
      storynumber = 5;
    } else if (userchoice == 2 && storynumber == 2) {
      storynumber = 4;
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
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];
}

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
