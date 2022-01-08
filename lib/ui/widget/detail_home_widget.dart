import 'package:flutter/material.dart';

import 'package:test_coding/model/rumah_sakit.dart';
import 'package:test_coding/ui/widget/deskripsi_widget.dart';
import 'package:test_coding/ui/widget/home_detailmap_widget.dart';

class InfoDetalHomeWidget extends StatelessWidget {
  const InfoDetalHomeWidget({
    Key? key,
    required this.info,
  }) : super(key: key);
  final RumahSakit info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailDeskripsiWidget(info: info),
          const SizedBox(height: 12),
          const Text(
            "Location",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              fontSize: 24,
            ),
          ),
          HomeDetailMapWidget(
            map: info,
          ),
        ],
      ),
    );
  }
}
