import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:test_coding/model/rumah_sakit.dart';

class DetailDeskripsiWidget extends StatelessWidget {
  const DetailDeskripsiWidget({
    Key? key,
    required this.info,
  }) : super(key: key);

  final RumahSakit info;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      info.deskripsi,
      trimLines: 3,
      colorClickableText: Colors.black,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      style: const TextStyle(fontSize: 14, color: Colors.black),
      moreStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      lessStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
