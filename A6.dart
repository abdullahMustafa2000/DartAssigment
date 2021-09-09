import 'dart:io';

main() {
  var list = List.filled(100, 0);
  var input;
  while(input != 0) {
    input = int.parse(stdin.readLineSync()!);
    if(input >= 0 && input < 100) {
      list[input]++;
    } else {
      print('sorry! you have entered a number out of the range');
      break;
    }
  }
  print('the program has ended your result is..');
  for(var i=1; i<list.length; i++) {
    if(list[i] != 0) {
      if(list[i] > 1)
        print('${i} occurs ${list[i]} times');
      else
        print('${i} occurs ${list[i]} time');
    }
  }
}