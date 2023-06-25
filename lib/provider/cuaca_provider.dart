import 'package:mp12cuaca/model/model_cuaca.dart';
import 'package:mp12cuaca/service/cuaca_service.dart';
import 'package:flutter/cupertino.dart';

class CuacaProvider extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  CuacaService cuacaService = CuacaService();
  CuacaModel cuacaModel = CuacaModel();

  showWeatherData() async {
    cuacaModel = await cuacaService.getCurrentWeather(cityNameText.text);
    print(cuacaModel.weather?.first?.main);
    notifyListeners();
  }
}