import 'package:quiz_game/Q&A.dart';

class Listclass {
  final List<QueWithAns> _fullQA = [
    QueWithAns('Some cats are actually allergic to humans', true),
    QueWithAns('You can lead a cow down stairs but not up stairs.', false),
    QueWithAns(
        'Approximately one quarter of human bones are in the feet.', true),
    QueWithAns('A slug\'s blood is green.', true),
    QueWithAns('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    QueWithAns('It is illegal to pee in the Ocean in Portugal.', true),
    QueWithAns(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QueWithAns(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QueWithAns(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QueWithAns(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QueWithAns('Google was originally called "Backrub".', true),
    QueWithAns(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QueWithAns(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  String getques(int val) {
    return _fullQA[val].ques;
  }

  bool getansw(int val) {
    return _fullQA[val].answ;
  }
}
