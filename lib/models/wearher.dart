class Wilayah {
  String id;
  String kota;
  String provinsi;
  String kecamatan;
  double lat;
  double lon;

  Wilayah({
    required this.id,
    required this.kota,
    required this.provinsi,
    required this.kecamatan,
    required this.lat,
    required this.lon,
  });

  factory Wilayah.fromJson(Map<String, dynamic> json) {
    return Wilayah(
      id: json['id'] ?? '',
      kota: json['kota'] ?? '',
      provinsi: json['provinsi'] ?? '',
      kecamatan: json['kecamatan'] ?? '',
      lat: json['lat'] != null ? double.parse(json['lat'].toString()) : 0,
      lon: json['lon'] != null ? double.parse(json['lon'].toString()) : 0,
    );
  }
}

class Cuaca {
  String id;
  String nama;
  String cuaca;
  double suhu;
  double kelembapan;
  String kodeCuaca;

  Cuaca({
    required this.id,
    required this.nama,
    required this.cuaca,
    required this.suhu,
    required this.kelembapan,
    required this.kodeCuaca,
  });

  factory Cuaca.fromJson(Map<String, dynamic> json) {
    return Cuaca(
      id: json['id'] ?? '',
      nama: json['name'] ?? '',
      cuaca: json['weather'] ?? '',
      suhu: json['temperature'] != null
          ? double.parse(json['temperature'].toString())
          : 0,
      kelembapan: json['humidity'] != null
          ? double.parse(json['humidity'].toString())
          : 0,
      kodeCuaca: json['kode'] ?? '',
    );
  }

  String getIconUrl() {
    if (kodeCuaca == null) return '';

    String iconFilename = '$kodeCuaca.png';
    String iconUrl = 'https://ibnux.github.io/BMKG-importer/icon/$iconFilename';

    return iconUrl;
  }
}
