
import 'dart:io';

main() {

  print('enter the size of the array');
  var size = int.parse(stdin.readLineSync()!);
  var list = List.filled(size, 0);
  for(var i = 0; i< size; i++) {
    print('enter number ${i+1}');
    list[i] = int.parse(stdin.readLineSync()!);
  }

  var mid = size~/2;
  if(size % 2 != 0) {
    mid++;
  }
  for(var i = 0; i< size; i++) {
    if(i == mid)
      break;
    var temp = list[i];
    list[i] = list[(size-1)-i];
    list[(size-1)-i] = temp;
  }
  print(list);
}