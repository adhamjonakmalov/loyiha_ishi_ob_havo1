class WeatherModel {
  final Location location;
  final Current current;
  // Forecst forecst;

  WeatherModel({
    required this.location,
    required this.current,
    // required this.forecst,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
      // forecst: Forecst.fromJson(json['forecast']),
    );
  }

  get forecst => null;
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
  String lastupdated;
  int tempc;
  Condition condition;
  Current({
    required this.lastupdated,
    required this.tempc,
    required this.condition,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      lastupdated: json['last_updated'],
      tempc: json['temp_c'],
      condition: Condition.fromJson(json['condition']),
    );
  }
}

class Condition {
  String text;
  String icon;
  Condition({
    required this.text,
    required this.icon,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
    );
  }
}

class Forecst {
  List<Forecastday> forecastday;
  Forecst({
    required this.forecastday,
  });
  factory Forecst.fromJson(Map<String, dynamic> json) {
    List data = [];
    json['forecastday'].forEach((value) {
      data.add(Forecastday.fromJson(value));
    });
    return Forecst(forecastday: List.from(data));
  }
}

class Forecastday {
  String max;
  String min;
  Forecastday({
    required this.max,
    required this.min,
  });
  factory Forecastday.fromJson(Map<String, dynamic> json) {
    return Forecastday(max: json['max'], min: json['min']);
  }
}
