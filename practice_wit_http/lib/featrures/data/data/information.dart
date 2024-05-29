
import 'package:http/http.dart' as http;
import 'package:practice_wit_http/featrures/data/models/model.dart';

class Information {
  Future<Model?> fetchData() async {
    final response = await http.get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b'),
    );

    if (response.statusCode == 200) {
  final result = Model.fromJson(response.body as Map<String, dynamic>);
  return result;
    }
    return null;
  
  }
}
