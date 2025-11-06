import 'package:cinecito/config/constants/enviroment.dart';
import 'package:cinecito/domain/datasource/movies_datasource.dart';
import 'package:cinecito/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: Enviroment.theBaseUrl,
    queryParameters: {'api_key':Enviroment.key, 'language':'ex-MX'},
  ),
);
  @override
  Future<List<Map<String,dynamic>>> getNowPlaying({int page=1})async{
      final response = await dio.get('movie/nowPlaying');
      final moviedbResponse = response.data;

      return List<Map<String,dynamic>>.from(response.data['results']);
  }

   
}
