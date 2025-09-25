int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}
void main() {
  List<int> nums = [2, 3, 5, 3, 2];
  print(singleNumber(nums));
}