import 'package:flutter/material.dart';

import 'package:test_coding/model/rumah_sakit.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final RumahSakit detailRs;
  final double expadedHeight;
  final double containerHeight;

  DetailSliverDelegate({
    required this.detailRs,
    required this.expadedHeight,
    required this.containerHeight,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.network(
          detailRs.imageUrl,
          width: MediaQuery.of(context).size.width,
          height: expadedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: const EdgeInsets.only(
                top: 50,
                left: 25,
                right: 25,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: expadedHeight - containerHeight - shrinkOffset,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: containerHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expadedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
