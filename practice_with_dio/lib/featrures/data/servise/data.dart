import 'package:dio/dio.dart';
import 'package:practice_with_dio/featrures/data/models/hello.dart';

class Information {
  Future<Hello?> fetchData() async {
    final first = Dio();
    final response = await first.get(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    if (response.statusCode == 200) {
      final hello = Hello(
        base: response.data['base'],
        name: response.data['name'],
        main: response.data['weather'][0]['main'],
      );
      return hello;
    }
  }
}
