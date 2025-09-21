bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (var c in s.split('')) {
    if (c == '(' || c == '{' || c == '[') {
      stack.add(c);
    } else if (pairs.containsKey(c)) {
      if (stack.isEmpty || stack.removeLast() != pairs[c]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isValid('()'));
  print(isValid('()[]'));
  print(isValid('(]'));
  print(isValid('([)]'));
  print(isValid('{[]}'));
}
