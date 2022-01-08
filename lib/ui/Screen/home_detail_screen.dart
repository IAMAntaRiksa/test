import 'package:flutter/material.dart';

import 'package:test_coding/model/rumah_sakit.dart';
import 'package:test_coding/ui/widget/detail_home_widget.dart';
import 'package:test_coding/ui/widget/detail_sliver_widget.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({
    Key? key,
    required this.rs,
  }) : super(key: key);
  final RumahSakit rs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              expadedHeight: 360,
              containerHeight: 30,
              detailRs: rs,
            ),
          ),
          SliverToBoxAdapter(
            child: InfoDetalHomeWidget(info: rs),
          )
        ],
      ),
    );
  }
}
