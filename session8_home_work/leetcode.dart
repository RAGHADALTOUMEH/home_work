void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];

  int minPrice = prices[0], maxProfit = 0;

  for (var price in prices) {
    minPrice = price < minPrice ? price : minPrice;
    maxProfit = (price - minPrice) > maxProfit ? (price - minPrice) : maxProfit;
  }

  print(maxProfit);
}
