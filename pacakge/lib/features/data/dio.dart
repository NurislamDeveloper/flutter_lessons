// import 'package:pacakge/features/data/model.dart';

// class Infor {
//   Future<void> response() async {
//     final dio = Dio();
//     Response response = await dio.get(
//         'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9ca1643f2fe63535c13cf0838c32ff8d');

//   }
// }
import 'package:dio/dio.dart';
import 'package:pacakge/features/data/model.dart';

class Infor {
  Future<Model?> fetchWeatherData() async {
    final dio = Dio();
    try {
      final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather',
        queryParameters: {
          'q': 'bishkek',
          'appid': '9ca1643f2fe63535c13cf0838c32ff8d',
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final api = Model.fromJson(data);
        return api;
      } else {
        // Handle the case where the API call was not successful
        print('Failed to load weather data');
        return null;
      }
    } catch (e) {
      // Handle errors
      print('Error: $e');
      return null;
    }
  }
}

