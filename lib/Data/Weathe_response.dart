import 'Location.dart';
import 'Current.dart';

class WeatheResponse {
  WeatheResponse({
      this.location, 
      this.current,});

  WeatheResponse.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
  }
  Location? location;
  Current? current;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    return map;
  }
}