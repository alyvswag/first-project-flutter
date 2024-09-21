class WeatherModel {
  final String zaman;
  final String ikon;
  final String durum;
  final String derece;
  final String min;
  final String max;
  final String gece;
  final String nem;

  WeatherModel(this.zaman, this.ikon, this.durum, this.derece, this.min,
      this.max, this.gece, this.nem);

  WeatherModel.fromJson(Map<String, dynamic> json)
      : zaman = json['date'],
        ikon = json['icon'],
        durum = json['description'],
        derece = json['degree'],
        min = json['min'],
        max = json['max'],
        gece = json['night'],
        nem = json['humidity'];
}
