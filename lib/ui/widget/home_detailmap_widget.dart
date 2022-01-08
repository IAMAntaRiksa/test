import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:test_coding/model/rumah_sakit.dart';

class HomeDetailMapWidget extends StatefulWidget {
  const HomeDetailMapWidget({
    Key? key,
    required this.map,
  }) : super(key: key);

  final RumahSakit map;

  @override
  State<HomeDetailMapWidget> createState() => _HomeDetailMapWidgetState();
}

class _HomeDetailMapWidgetState extends State<HomeDetailMapWidget> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    _controller;
    super.initState();
  }

  @override
  void dispose() {
    _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(
        widget.map.location.latitude,
        widget.map.location.longitude,
      ),
      zoom: 11,
    );
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GoogleMap(
        markers: {
          Marker(
              markerId: const MarkerId('id1'),
              position: LatLng(
                widget.map.location.latitude,
                widget.map.location.longitude,
              )),
        },
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
