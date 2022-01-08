import 'package:test_coding/model/rumah_sakit.dart';

class RsResponse {
  List<RumahSakit> rumahSakits = [
    const RumahSakit(
      id: 1,
      nama: 'RSUD',
      alamat: 'RSUD Ujung Berung Kota Bandung',
      deskripsi:
          'RSUD Ujung Berung Kota Bandung ini adalah RSUD Ujung Berung Kota Bandung, RSUD Ujung Berung Kota Bandung ini adalah RSUD Ujung Berung Kota Bandung ,RSUD Ujung Berung Kota Bandung ini adalah RSUD Ujung Berung Kota Bandung',
      imageUrl:
          'https://images.bisnis-cdn.com/posts/2021/06/21/1408006/vaksinasi-covid-19-di-rsud-kota-bandung-ujung-berung-1.jpg',
      location:
          Location(latitude: -6.896286771555365, longitude: 107.6198082075665),
      telpon: '03232821221322',
    ),
    const RumahSakit(
      id: 2,
      nama: 'Immanuel',
      alamat: 'RS Immanuel  Kota Bandung',
      deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
      imageUrl:
          'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
      location:
          Location(latitude: -6.158733775511902, longitude: 106.82538444909034),
      telpon: '0821221322',
    ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location:
    //       Location(latitude: 37.42796133580664, longitude: -122.085749655962),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // ),
    // const RumahSakit(
    //   id: 2,
    //   nama: 'RS Immanuel',
    //   alamat: 'RS Immanuel  Kota Bandung',
    //   deskripsi: 'RS Immanuel Bandung ini adalah RS Immanuel Kota Bandung',
    //   imageUrl:
    //       'https://www.populeria.com/wp-content/uploads/Jadwa-Praktek-Dokter-Imanuel-Bandung.jpg',
    //   location: Location(latitude: 3232.323, longitude: 32323.4232),
    //   telpon: '0821221322',
    // )
  ];
}
