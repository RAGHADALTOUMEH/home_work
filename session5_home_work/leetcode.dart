void main() {
  int target = 5;
  List<int> result = [];
  Map<int, int> nums = {0: 1, 1: 2, 2: 3, 3: 6};
  for (int i = 0; i < nums.length; i++) {
    for (int n = i + 1; n < nums.length; n++) {
      if (nums[i]! + nums[n]! == target) {
        result.add(i);
        result.add(n);
      }
    }
  }
  print(result);
}
