bool isPalindrome(String s) {
  s = s.toLowerCase();

  String cleaned = '';
  for (var ch in s.split('')) {
    if (RegExp(r'[a-z0-9]').hasMatch(ch)) {
      cleaned += ch;
    }
  }

  String reversed = cleaned.split('').reversed.join('');
  return cleaned == reversed;
}

void main() {
  String s = 'man, a plan, a canal: Panama';
  print(isPalindrome(s));
}
