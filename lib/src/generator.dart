/*
The Joker by Alexander Abraham.
Licensed under the MIT license.
*/

/// This imports the [Random] class.
import 'dart:math';

/// Generates a single number with
/// a randomly-chosen prefix.
/// [AUSTRIA ONLY!]
String generateSingleNumber(){
  Random prefixRand = new Random();
  Random suffixRand = new Random();
  List<String> randDigits = [];
  List<String> digits = '1234567890'.split('');
  List<String> prefixes = [
    '0650',
    '0664',
    '0676',
    '0681',
    '0660',
    '0699'
  ];
  String randPrefix = prefixes[
    prefixRand.nextInt(
      prefixes.length
    )
  ];
  if (randPrefix == '0699'){
    for (int i = 1; i < 9; i++){
      String randDigit = digits[
        prefixRand.nextInt(
          digits.length
        )
      ];
      randDigits.add(randDigit);
    }
  }
  else {
    for (int i = 1; i < 8; i++){
      String randDigit = digits[
        prefixRand.nextInt(
          digits.length
        )
      ];
      randDigits.add(randDigit);
    }
  }
  String suffix = randDigits.join('');
  String result = '$randPrefix$suffix';
  return result;
}

/// Generates a list of telephone numbers
/// of length [count].
List<String> numberGen(int count){
  List<String> result = [];
  int rEnd = count + 1;
  for (
    int i = 0;
    i < rEnd;
    i++
  ){
    result.add(generateSingleNumber());
  }
  return result;
}
