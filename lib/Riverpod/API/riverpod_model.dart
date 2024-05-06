
class RiverpodModel {
  String activity;
  String type;
  int participants;
  double price;
  String link;
  String key;
  double accessibility;

  RiverpodModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });


  factory RiverpodModel.fromJson(Map<String,dynamic> json){
    return RiverpodModel(
      activity: json['activity'],
      type: json['type'],
      participants: json['participants'],
      price: json['price'],
      link: json['link'],
      key: json['key'],
      accessibility: json['accessibility'],
    );
}
}
