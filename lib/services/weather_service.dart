import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_project/models/weather_model.dart';

class WeatherService {
  Future<String> getLocation() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Error: Konum bagli deyil.");
    }

    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Error: Konum izni vermelisiniz.");
      }
    }

    final Position location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var placemark =
        await placemarkFromCoordinates(location.latitude, location.longitude);

    final String? city = placemark[0].locality;
    if (city == null) {
      return Future.error("Error: Şehir bulunmadi.");
    }
    return city;
  }

  Future<List<WeatherModel>> getWeatherData() async {
    final String city = await getLocation();
    final String url =
        "https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=$city";

    const Map<String, dynamic> headers = {
      "authorization": "apikey 2rBH3PdPr54Fx8xWEWCoD6:5oRoKKOYyvLALgmX2lPmcd",
      "content-type": "application/json"
    };

    final dio = Dio();
    final response = await dio.get(url, options: Options(headers: headers));

    if (response.statusCode != 200) {
      return Future.error("Error: Cavab gelmedi!");
    }

    final List result = response.data['result'];
    final List<WeatherModel> weatherList =
        result.map((e) => WeatherModel.fromJson(e)).toList();
    return weatherList;
  }
}
