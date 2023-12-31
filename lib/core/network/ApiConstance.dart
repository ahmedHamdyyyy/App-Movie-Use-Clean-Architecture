class ApiConstance {
  static const String baseurl = "https://api.themoviedb.org/3";
  static const String apiKey = "c3435cfe40aeb079689227d82bf921d3";
  static const String nawPlayingMoviesPath =
      "$baseurl/movie/now_playing?api_key=$apiKey";
  static const String getPopularMoviesPath =
      "$baseurl/movie/popular?api_key=$apiKey";
  static const String getTopRatedMoviesPath =
      "$baseurl/movie/top_rated?api_key=$apiKey";

  static const String baseUrlImage="https://image.tmdb.org/t/p/w500/";
  static  String imageUrl(String path)=>"$baseUrlImage$path";

  static String movieDetailsPath(int movieId){
    return "$baseurl/movie/$movieId?api_key=$apiKey";
  }
  static String movieRecommendationPath(int movieId){
    return "$baseurl/movie/$movieId/recommendations?api_key=$apiKey";
  }

}
