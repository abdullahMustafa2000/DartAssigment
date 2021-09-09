
int anyIndex(var index, var arrLength) {
  return index < arrLength-1? index + 1 : index -1;
}

main() {
  var list = [1, 3, 2, 4];

  var smallest = list[0], smallestIndex = 0;
  // get the smallest number
  for(var i = 1; i< list.length; i++) {
    if(list[i] < smallest) {
      smallest = list[i];
      smallestIndex = i;
    }
  }

  // find smallest after ignoring the real smallest number
  var fakeSmallest = list[anyIndex(smallestIndex, list.length)];
  for(var i = 0; i< list.length; i++) {
    if(i == smallestIndex)
      continue;
    if(list[i] < fakeSmallest) {
      fakeSmallest = list[i];
    }
  }
  print(fakeSmallest);
}