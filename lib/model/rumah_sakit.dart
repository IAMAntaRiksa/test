import 'package:equatable/equatable.dart';

class RumahSakit extends Equatable {
  final int id;
  final String nama;
  final String alamat;
  final String deskripsi;
  final String imageUrl;
  final Location location;
  final String telpon;

  const RumahSakit({
    required this.id,
    required this.nama,
    required this.alamat,
    required this.deskripsi,
    required this.imageUrl,
    required this.location,
    required this.telpon,
  });

  @override
  List<Object> get props {
    return [
      id,
      nama,
      alamat,
      deskripsi,
      imageUrl,
      location,
      telpon,
    ];
  }

  @override
  String toString() {
    return 'RumahSakit(id: $id, nama: $nama, alamat: $alamat, deskripsi: $deskripsi, imageUrl: $imageUrl, location: $location, telpon: $telpon)';
  }
}

class Location extends Equatable {
  final double longitude;
  final double latitude;

  const Location({
    required this.longitude,
    required this.latitude,
  });

  @override
  List<Object> get props {
    return [
      longitude,
      latitude,
    ];
  }

  @override
  String toString() {
    return 'Location(longitude: $longitude, latitude: $latitude)';
  }
}
