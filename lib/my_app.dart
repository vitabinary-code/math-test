import 'dart:io';
import 'dart:math';

String inTemp;
Random rand = Random();
int correctAnswer, userAnswer, operand1, operand2, operation; // all ints
int questionsAttempted = 0, numCorrect = 0; //ints initialized
dynamic mathTest() {
  while (true) {
    operation = rand.nextInt(3); //random number 0,1, or 2
    operand1 = rand.nextInt(11); // random number 0-10
    operand2 = rand.nextInt(11); // random number 0-10
    switch (operation) {
      case 0: //addition question
        print('$operand1 + $operand2 = ');
        correctAnswer = operand1 + operand2;
        break;
      case 1: // subtraction question
        print('$operand1 - $operand2 = ');
        correctAnswer = operand1 - operand2;
        break;
      case 2:
        print('$operand1 * $operand2 = ');
        correctAnswer = operand1 * operand2;
        break;
      default:
        break;
    }
    inTemp = stdin.readLineSync();

    try {
      userAnswer = int.parse(inTemp);
    } on FormatException {
      print('Thank for playing!');
      print('You got $numCorrect out of $questionsAttempted correct.');
      break;
    }
    if (userAnswer == correctAnswer) {
      numCorrect++;
      print('Correct!');
    } else {
      print('Wrong!');
    }
    questionsAttempted++;
  }
}
