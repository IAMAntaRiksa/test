import 'package:flutter/material.dart';

import 'package:test_coding/model/rumah_sakit.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({
    Key? key,
    required this.rs,
  }) : super(key: key);
  final List<RumahSakit> rs;
  static const String routeName = '/rsdetail';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rs.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 200,
          width: 200,
          child: Image.network(rs[index].imageUrl),
        );
      },
    );
  }
}
