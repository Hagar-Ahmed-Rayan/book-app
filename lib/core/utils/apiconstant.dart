class ApiConstance {
  static const String baseUrl = 'https://www.googleapis.com/books/v1';

  static const String featurebooks="$baseUrl/volumes?Filtering=free-ebooks&q=subject:Programming";
  static const String Bestseller="$baseUrl/volumes?Filtering=free-ebooks&Sorting=newest &q=computer science";
  static const String SimilarBook="$baseUrl/volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming";


}