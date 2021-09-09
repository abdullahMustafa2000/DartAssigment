
import 'dart:io';

main() {
  /*String number = '';
  for(var i=0; i < 10; i++) {
    var input = stdin.readLineSync();
    if(!number.contains(input!)) {
      number+= input+' ';
    }
  }
  print(number);*/

  var list = List.filled(10, 0);
  var checkList = List.filled(100, 0);
  var input = 0, counter = 0;
  for(var i=0; i< list.length; i++) {
    input = int.parse(stdin.readLineSync()!);
    if(checkList[input] == 0) {
      list[counter] = input;
      counter++;
      checkList[input]++;
    } else if(checkList[input] > 0) {
      continue;
    }
  }
  print(checkList);
  var endPoint = list.length-1;
  while(checkList[endPoint] == 0) {
    counter = endPoint;
    endPoint--;
  }
  print(list);
  String strNum = '';
  for(var i = 0; i< counter; i++) {
    if(checkList[list[i]] != 0) {
      strNum += list[i].toString() + ' ';
    }
  }
  print('the number of distinct number is ${strNum.length-(strNum.length/2)}');
  print(strNum);
}