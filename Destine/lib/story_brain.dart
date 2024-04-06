import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  int _storyType = 0;
  final List<List<Story>> _storyData = [
    [
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
    ],
    [
      Story(
          storyTitle:
              'You\'re driving down a dark road when your car breaks down. You start walking, hearing strange noises from the nearby woods.',
          choice1: 'Keep walking, ignoring the noises.',
          choice2: 'Investigate the source of the noises.'),
      Story(
          storyTitle:
              'You enter the woods and find an old abandoned mansion. The place feels creepy, but you need help.',
          choice1: 'Approach the mansion.',
          choice2: 'Turn back, it\'s too creepy.'),
      Story(
          storyTitle:
              'You enter the mansion, feeling uneasy. You hear your own footsteps echoing in the empty halls.',
          choice1: 'Call for help, hoping someone is there.',
          choice2: 'Explore quietly, searching for clues.'),
      Story(
          storyTitle:
              'As you search for a key, the mansion\'s doors slam shut and lock, trapping you inside. You realize you\'re not alone in this haunted place.',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'You force the door open, revealing a chamber with ancient artifacts and a cryptic journal. Suddenly, ghostly apparitions emerge from the shadows, their eerie whispers filling your mind causing you to lose your mind',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'You hide, but the footsteps draw closer, and you find yourself face to face with the ghostly apparitions of the mansion\'s previous inhabitants. They claim they will never let you leave.',
          choice1: 'Restart',
          choice2: ''),
    ],
    [
      Story(
          storyTitle:
              'You find a mysterious magic 8-ball that grants twisted desires. You shake it and make your first wish.',
          choice1: 'I wish for infinite money!',
          choice2: 'I wish to become the smartest person alive!'),
      Story(
          storyTitle:
              'Your wish is granted, but there\'s a catch! The magic 8-ball cracks, and you realize you only have one more wish.',
          choice1: 'I wish for world peace... what could go wrong?',
          choice2: 'I wish to undo everything and return to my boring life.'),
      Story(
          storyTitle:
              'You\'re now the richest person alive, but money has lost its value! Everyone is poor except for you, and chaos ensues.',
          choice1:
              'Use your wealth to build a fortress and hide from the angry mobs.',
          choice2: 'Use your final wish to reverse everything.'),
      Story(
          storyTitle:
              'You become the smartest person alive, but your newfound intelligence reveals horrifying truths about the world that drive you mad.',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'You undo everything and return to your normal life. You decide to keep the magic 8-ball, just in case you ever want to shake things up again.',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'You wish for world peace, but the 8-ball causes everyone to become brainwashed, living in a dystopian utopia.',
          choice1: 'Restart',
          choice2: ''),
    ],
    [
      Story(
          storyTitle:
              'You find a genie lamp at a yard sale. Excited, you rub it, and a grumpy-looking genie appears, offering you one wish.',
          choice1: 'Wish for infinite wishes!',
          choice2: 'Wish for the ability to read minds.'),
      Story(
          storyTitle:
              'As you make your wish, the genie smirks. "Wish granted! But now everyone else can read minds too."',
          choice1: 'Try to clear your mind, so no one knows your secrets.',
          choice2:
              'Embrace the chaos and shout your thoughts for all to hear.'),
      Story(
          storyTitle:
              'The genie rolls his eyes and says, "No wishing for more wishes!" He looks annoyed.',
          choice1: 'Fine, wish for the ability to fly.',
          choice2: 'Change your wish to world peace.'),
      Story(
          storyTitle:
              'Your attempt at mind-reading defense works! But everyone else is in chaos, sharing their deepest secrets and fears. Society collapses.',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'The world is at peace, but it\'s eerily quiet without conflict. People become bored and restless, making life a dull experience.',
          choice1: 'Restart',
          choice2: ''),
      Story(
          storyTitle:
              'The genie snaps his fingers, and suddenly everyone can fly! People start bumping into each other mid-air, causing accidents and total chaos. That\'s sad',
          choice1: 'Restart',
          choice2: ''),
    ],
  ];
  void setStoryType(int num) {
    _storyType = num;
  }

  String getStory() {
    return _storyData[_storyType][_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyType][_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyType][_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    return _storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2;
  }

  void switchStoryList(int storyListIndex) {
    _storyType = storyListIndex;
  }

  void restart() {
    _storyNumber = 0;
  }
}
