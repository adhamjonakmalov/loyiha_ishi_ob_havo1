class Model {
  final Location location;
  final Current current;

  Model({
    required this.location,
    required this.current,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(location: Location.fromJson(json['location']), current: Current.fromJson(json['current']));
  }
}

class Location {
  final String name;
  final String localtime;
  Location({
    required this.name,
    required this.localtime,
  });
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(name: json['name'], localtime: json['localtime']);
  }
}

class Current {
  final String lastupdated;
  final String tempc;
  final Condition condition;
  Current({
    required this.lastupdated,
    required this.tempc,
    required this.condition,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(lastupdated: json['last_updated'], tempc: json['temp_c'], condition: Condition.fromJson(json['condition']));
  }
}

class Condition {
  final String text;
  final String icon;
  Condition({
    required this.text,
    required this.icon,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(text: json['text'], icon: json['icon']);
  }
}
