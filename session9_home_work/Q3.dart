class Grade {
  double _score = 0;
  set score(double value) {
    if (value < 0 || value > 100) {
      print('Invalid score');
    } else {
      _score = value;
    }
  }

  double get score => _score;
  bool get isPass => _score >= 50;
}

void main() {
  Grade g = Grade();
  g.score = 75;
  print('الدرجة: ${g.score}, ناجح؟ ${g.isPass}');

  g.score = 30;
  print('الدرجة: ${g.score}, ناجح؟ ${g.isPass}');

  g.score = 150;
}
