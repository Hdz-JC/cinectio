class MoviedbResponse {

  final Dates? dates;
  final int totalResults;

  MoviedbResponse({
    required this.page,
    required this.dates,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
}