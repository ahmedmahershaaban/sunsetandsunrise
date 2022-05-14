class SunriseSunsetModel {
  SunriseSunsetModel({
    required this.results,
    required this.status,
  });
  late final Results results;
  late final String status;

  SunriseSunsetModel.fromJson(Map<String, dynamic> json) {
    results = Results.fromJson(json['results']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['results'] = results.toJson();
    _data['status'] = status;
    return _data;
  }
}

class Results {
  Results({
    required this.sunrise,
    required this.sunset,
    required this.solarNoon,
    required this.dayLength,
    required this.civilTwilightBegin,
    required this.civilTwilightEnd,
    required this.nauticalTwilightBegin,
    required this.nauticalTwilightEnd,
    required this.astronomicalTwilightBegin,
    required this.astronomicalTwilightEnd,
  });
  late final String sunrise;
  late final String sunset;
  late final String solarNoon;
  late final String dayLength;
  late final String civilTwilightBegin;
  late final String civilTwilightEnd;
  late final String nauticalTwilightBegin;
  late final String nauticalTwilightEnd;
  late final String astronomicalTwilightBegin;
  late final String astronomicalTwilightEnd;

  Results.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    solarNoon = json['solar_noon'];
    dayLength = json['day_length'];
    civilTwilightBegin = json['civil_twilight_begin'];
    civilTwilightEnd = json['civil_twilight_end'];
    nauticalTwilightBegin = json['nautical_twilight_begin'];
    nauticalTwilightEnd = json['nautical_twilight_end'];
    astronomicalTwilightBegin = json['astronomical_twilight_begin'];
    astronomicalTwilightEnd = json['astronomical_twilight_end'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sunrise'] = sunrise;
    _data['sunset'] = sunset;
    _data['solar_noon'] = solarNoon;
    _data['day_length'] = dayLength;
    _data['civil_twilight_begin'] = civilTwilightBegin;
    _data['civil_twilight_end'] = civilTwilightEnd;
    _data['nautical_twilight_begin'] = nauticalTwilightBegin;
    _data['nautical_twilight_end'] = nauticalTwilightEnd;
    _data['astronomical_twilight_begin'] = astronomicalTwilightBegin;
    _data['astronomical_twilight_end'] = astronomicalTwilightEnd;
    return _data;
  }
}
