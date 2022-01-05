import 'package:test_coding/model/rumah_sakit.dart';

class RsResponse {
  List<RumahSakit> rumahSakits = [
    const RumahSakit(
      id: 1,
      nama: 'RSUD Ujung Berung',
      alamat: 'RSUD Ujung Berung Kota Bandung',
      deskripsi:
          'RSUD Ujung Berung Kota Bandung ini adalah RSUD Ujung Berung Kota Bandung',
      imageUrl:
          'https://images.bisnis-cdn.com/posts/2021/06/21/1408006/vaksinasi-covid-19-di-rsud-kota-bandung-ujung-berung-1.jpg',
      location: 'Bandung kota',
      telpon: 0821221322,
    ),
    const RumahSakit(
      id: 2,
      nama: 'RS Immanuel',
      alamat: 'RS Immanuel  Kota Bandung',
      deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
      imageUrl:
          'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
      location: 'Bandung kota',
      telpon: 0821221322,
    )
  ];
}
