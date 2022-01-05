import 'package:equatable/equatable.dart';

class RumahSakit extends Equatable {
  final int id;
  final String nama;
  final String alamat;
  final String deskripsi;
  final String imageUrl;
  final String location;
  final int telpon;

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
