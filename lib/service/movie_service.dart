import 'package:dio/dio.dart';
import 'package:flutmov/model/movie_model.dart';

class MoviesService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'ab3a67a225bfc7da852014189004fcb5';

  final dio = Dio();

  Future<List<MovieModel>> getNowMovies() async {
    try {
      final res = await dio.get('$baseUrl/3/movie/now_playing?api_key=$apiKey');

      final data = res.data['results'] as List;

      print(data);

      final movies = data.map((e) => MovieModel.fromJson(e)).toList();

      return movies;
    } catch (e) {
      throw e;
    }
  }
}
