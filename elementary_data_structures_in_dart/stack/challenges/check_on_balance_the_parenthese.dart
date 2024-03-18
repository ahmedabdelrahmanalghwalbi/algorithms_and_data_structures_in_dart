import '../stack_data_structure.dart';

void main() {
  String firstCase = "h((e))llo(world)()";
  String secondCase = "(hello world";
  String thirdCase = "hello world";

  print(checkBalanceOfParentheses(str: firstCase));
  //output: balanced parentheses
  print(checkBalanceOfParentheses(str: secondCase));
  //output: unbalanced parentheses
  print(checkBalanceOfParentheses(str: thirdCase));
  //output: not contains parentheses
}

String checkBalanceOfParentheses({required String str}) {
  //first convert string to a list of characters
  Stack<String> _stack = Stack<String>();
  List<String> chars = str.split("");
  if (chars.isEmpty || (!chars.contains('(') && !chars.contains(')')))
    return "not contains parentheses";
  if (!chars.contains('(') || !chars.contains(')')) {
    return "unbalanced parentheses";
  }
  for (String char in chars) {
    if (char == '(') {
      _stack.push = char;
    } else if (char == ')') {
      if (_stack.isStackNotEmpty) {
        _stack.pop;
      } else {
        return "unbalanced parentheses";
      }
    }
  }
  if (_stack.isStackEmply) return "balanced parentheses";
  return "unbalanced parentheses";
}
