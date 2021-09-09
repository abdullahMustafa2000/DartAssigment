import "dart:io";

void main() {

  int input = int.parse(stdin.readLineSync()!);
  var list = [0, 1, 3, 4, 5, 6, 7, 8, 9, 10];
  var flag = false;
  for(var i=0; i<list.length; i++) {
    if(list[i] == input) {
      flag = true;
      break;
    }
  }

  if(flag) {
    print('found');
  } else
    print('not found');
}