import 'package:flutter/material.dart';
import 'package:weather_project/models/weather_model.dart';
import 'package:weather_project/services/weather_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WeatherModel>? _weatherList;
  String? _city;

  void _getWeatherData() async {
    _weatherList = await WeatherService().getWeatherData();
    _city = await WeatherService().getLocation();
    setState(() {});
  }

  @override
  void initState() {
    _getWeatherData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Weather"),
        backgroundColor: Colors.amber[200],
      ),
      body: Center(
        child: _weatherList == null
            ? const Text("yukleniyor")
            : Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _city!,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: _weatherList!.length,
                      itemBuilder: (context, index) {
                        final WeatherModel weatherModel = _weatherList![index];
                        return Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 6, 40, 68),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          child: ListTile(
                            hoverColor: Colors.amber,
                            leading: Text(
                              weatherModel.zaman,
                              style: TextStyle(color: Colors.white),
                            ),
                            title: Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                Image.network(weatherModel.ikon,
                                    width: 50, height: 50, fit: BoxFit.cover),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "${weatherModel.max.substring(0, 2)}°C",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${weatherModel.min.substring(0, 2)}°C",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                        height: 1.5,
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
