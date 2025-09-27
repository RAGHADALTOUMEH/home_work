int binarySearch(List<int> nums, int target) {
  for (int left = 0, right = nums.length - 1; left <= right;) {
    int mid = (left + right) ~/ 2;

    if (nums[mid] == target) return mid;
    if (nums[mid] < target)
      left = mid + 1;
    else
      right = mid - 1;
  }
  return -1;
}

void main() {
  List<int> nums = [0, 3, 4, 9, 10];
  print(binarySearch(nums, 9));
  print(binarySearch(nums, 2));
}
