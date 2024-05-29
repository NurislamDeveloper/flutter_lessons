class Model {
  Model({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
    // required this.speed,
    // required this.deg,
    // required this.gust,
  });
  final int id;
  final String main;
  final String description;
  final String icon;

factory Model.fromJson(Map<String, dynamic> json){
return  Model(id: json['id'], main: json['main'], description: json['description'], icon: json['icon'],);

}
}
