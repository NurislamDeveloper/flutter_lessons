import 'package:dio/dio.dart';
import 'package:weither_2/feathures/data/models/model.dart';
// import 'package:http/http.dart' as http;

class WeatherData {
  // Future<void> fetchDataFromhttp() async {
  //   final response = await http.get(
  //     Uri.parse(
  //         'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b'),
  //   );
  //   if (response.statusCode == 200) {
  //     print('click');
  //   }
  // }

  Future<WeatherModel?> fetchDataFromDio () async {
    final dio = Dio();
    final responseFromDio = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b',
    );
    if (responseFromDio.statusCode == 200) {
      final weather = WeatherModel(
        id: responseFromDio.data['weather'][0]['id'],
        main: responseFromDio.data['weather'][0]['main'],
        description: responseFromDio.data['weather'][0]['description'],
        icon: responseFromDio.data['weather'][0]['icon'],
        temp:  responseFromDio.data['main']['temp'],
        name:  responseFromDio.data['name']
      );
      return weather;
    }
  }
}
