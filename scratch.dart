void main(){
  int addFive({int number = 0}){
    return 5 + number;
  }

  print('5 + 5 is ${addFive(number: 5)}');
}