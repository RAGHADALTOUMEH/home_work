class Movie {
  String? title;
  double? rating;

  Movie(String title, double rating) {
    this.title = title;
    this.rating = rating;
  }
}

void main() {
  List<Movie> movies = [
    Movie('Movie A', 8.5),
    Movie('Movie B', 6.2),
    Movie('Movie C', 7.8),
    Movie('Movie D', 5.9),
  ];

  for (var movie in movies) {
    if (movie.rating! > 7) {
      print('${movie.title} (Rating: ${movie.rating})');
    }
  }
}
