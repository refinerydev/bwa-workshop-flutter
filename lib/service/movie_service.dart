import 'package:dio/dio.dart';

class MoviesService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'ab3a67a225bfc7da852014189004fcb5';

  final dio = Dio();

  getNowMovies() async {
    try {
      print('test test test ');
      final res = await dio.get('$baseUrl/3/movie/now_playing?api_key=$apiKey');
      // final res = await http
      //     .get(Uri.parse('$baseUrl/3/movie/now_playing?api_key=$apiKey'));
      print('hallo');
      print(res.data);
    } catch (e) {
      print(e);
    }
  }
}
