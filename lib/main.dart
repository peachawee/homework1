import 'dart:io';
import 'dart:math';

import 'mathgame.dart';

void main(){
  var game = Game();
  var result = 0;
  var count = 0;

  stdout.write('Please guess the number between 1 and 100, inclusive : ');
  while( result != 3 ) {
    count++;
    /*var*/String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess==null){
      print("Please type number only.");
      continue;
    }
    if(guess>100||guess<1){
      print("Please guess the number between 1 and 100 only.");
      continue;
    }
    result = game.doGuess(guess);
  }

  while(true) {
    stdout.write('You want to play again? (y|n) : ');
    var want = stdin.readLineSync();
    int w = game.checkWant(want);
    if ( w == 2 ) {
      print('please enter y or n only!');
      continue;
    }
    if ( w == 1 ) {
      doAgian();
      break;
    } else if (w == 0) {
      print('End game!');
      break;
    }
  }


}

void doAgian() {
  var game = Game();
  var result = 0;
  var count = 0;

  stdout.write('Please guess the number between 1 and 100, inclusive : ');
  while( result != 3 ) {
    count++;
    /*var*/String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess==null){
      print("Please type number only.");
      continue;
    }
    if(guess>100||guess<1){
      print("Please guess the number between 1 and 100 only.");
      continue;
    }
    result = game.doGuess(guess);
  }

  while(true) {
    stdout.write('You want to play again? (y|n) : ');
    var want = stdin.readLineSync();
    int w = game.checkWant(want);
    if ( w == 2 ) {
      print('please enter y or n only!');
      continue;
    }
    if ( w == 1 ) {
      doAgian();
      break;
    } else if (w == 0) {
      print('End game!');
      break;
    }
  }
}



/*int? myFunc() {
  return 0;
}*/


