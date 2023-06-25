import 'package:mp12cuaca/model/model_cuaca.dart';
import 'package:dio/dio.dart';

class CuacaService {
  final dio = Dio();

  Future<CuacaModel> getCurrentWeather(String cityName) async {
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=3f0dcc126042102cb813207db3fce0c5&units=metric');
    print(response.requestOptions.path);

    return CuacaModel.fromJson(response.data);
  }
}
