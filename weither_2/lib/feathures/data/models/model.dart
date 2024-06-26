class WeatherModel {
  WeatherModel(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon,
      required this.name,
      required this.temp,
      required this.speed,
      required this.humidity
      });

  final int id;
  final String main;
  final String description;
  final String icon;
  final String name;
  final double temp;
  final double speed;
  final int humidity;
}
