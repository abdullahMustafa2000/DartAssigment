import 'dart:io';

main() {
  var list = List.filled(100, 0);
  int avg = 0, input = 0, counter = 0;
  while(input >= 0) {
    input = int.parse(stdin.readLineSync()!);
    if(input >= 0 && input <= 100) {
      list[counter] = input;
      avg += input;
      counter++;
    }
  }

  try{
    avg = avg~/counter;
  }catch(integerDivisionByZero) {
    print('can\'t complete');
  }

  var counterAvg = 0;
  var i = 0;
  for(; i < counter; i++) {
    if(list[i] >= avg) {
      counterAvg++;
    }
  }
  print('$counterAvg of numbers is equal to or above the average');
  print('${counter-counterAvg} is less than the average');
}