class Model {
  Model(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  final int id;
  final String main;
  final String description;
  final String icon;


  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json['weather'][0]['id'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
    );
  }
}
