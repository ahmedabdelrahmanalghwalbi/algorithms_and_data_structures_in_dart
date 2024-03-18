import '../stack_data_structure.dart';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> names = ["ahmed", "abdelrahman", "ali", "hassan"];

  //print numbers in reversed order using stack
  print(Stack.of(numbers).toString());
  //output :- This is Your Stack ==> 10 -> 9 -> 8 -> 7 -> 6 -> 5 -> 4 -> 3 -> 2 -> 1

  //print names in reversed order using stack
  print(Stack.of(names).toString());
  //output :- This is Your Stack ==> hassan -> ali -> abdelrahman -> ahmed
}
