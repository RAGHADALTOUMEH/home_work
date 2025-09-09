bool containsDuplicate(List<int> nums) {
  Set<int> uniqueNumbers = {};

  for (int num in nums) {
    if (uniqueNumbers.contains(num)) {
      return true;
    }
    uniqueNumbers.add(num);
  }
  return false;
}

void main() {
  print(containsDuplicate([1, 2, 3, 1]));
  print(containsDuplicate([1, 2, 3, 4]));
}
