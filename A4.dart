/*
if best is 70
* Grade is A if score is Ú best - 10 "70-60"
Grade is B if score is Ú best - 20;  "60-50"
Grade is C if score is Ú best - 30;  "50-40"
Grade is D if score is Ú best - 40;  "40-30"
*/

import 'dart:io';

main() {

  print('enter the number of students');
  var numOfStudents = int.parse(stdin.readLineSync()!);
  var list = List.filled(numOfStudents, 0);
  for(var i = 0; i< numOfStudents; i++) {
    print('degree of number ${i+1}');
    list[i] = int.parse(stdin.readLineSync()!);
  }
  var max = list[0];
  for(var i=1; i< list.length; i++) {
    if(list[i] > max) {
      max = list[i];
    }
  }

  for(var i=0; i<list.length; i++) {
    var degree = list[i];
    var char = 'F';
    if(degree <= max && degree >= (max - 10)) {
      char = 'A';
    } else if(degree < (max - 10) && degree >= (max - 20)) {
      char = 'B';
    } else if(degree < (max - 20) && degree >= (max - 30)) {
      char = 'C';
    } else if(degree < (max - 30) && degree >= (max - 40)) {
      char = 'D';
    }
    print('student ${i+1} score $degree got $char');
  }
}