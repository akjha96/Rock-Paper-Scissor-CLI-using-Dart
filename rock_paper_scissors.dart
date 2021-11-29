import 'dart:io';

import 'dart:math';

enum Moves { rock, paper, scissor }
void main() {
  while (true) {
    print('Rock, Paper or Scissor (r/p/s)');
    final playerInput = stdin.readLineSync();

    Random random = new Random();
    final aiChoice = Moves.values[random.nextInt(3)];

    if (playerInput == 'r' && aiChoice == Moves.paper) {
      print('Your Choice: Rock \nAI Choice: Paper\nYou Loose!\n');
    } else if (playerInput == 'r' && aiChoice == Moves.scissor) {
      print('Your Choice: Rock \nAI Choice: Scissor\nYou Win!\n');
    } else if (playerInput == 'r' && aiChoice == Moves.rock) {
      print('Your Choice: Rock \nAI Choice: Rock\nIt\'s a Draw!\n');
    } else if (playerInput == 'p' && aiChoice == Moves.rock) {
      print('Your Choice: Paper \nAI Choice: Rock\nYou Win!\n');
    } else if (playerInput == 'p' && aiChoice == Moves.paper) {
      print('Your Choice: Paper \nAI Choice: Paper\nIt\'s a Draw!\n');
    } else if (playerInput == 'p' && aiChoice == Moves.scissor) {
      print('Your Choice: Paper \nAI Choice: Scissor\nYou Loose!\n');
    } else if (playerInput == 's' && aiChoice == Moves.rock) {
      print('Your Choice: Scissor \nAI Choice: Rock\nYou Loose!\n');
    } else if (playerInput == 's' && aiChoice == Moves.paper) {
      print('Your Choice: Scissor \nAI Choice: Paper\nYou Win!\n');
    } else if (playerInput == 's' && aiChoice == Moves.scissor) {
      print('Your Choice: Scissor \nAI Choice: Scissor\nIt\'s a Draw!\n');
    } else if (playerInput == 'q') {
      print('Thanks for playing! Bye Bye now!!\n');
      break;
    } else {
      print('Invalid Input! Please try again...\n');
    }
  }
}
