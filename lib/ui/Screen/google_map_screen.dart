import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_coding/model/rumah_sakit.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({
    Key? key,
    required this.ids,
  }) : super(key: key);

  final RumahSakit ids;
  @override
  State<GoogleMapScreen> createState() => GoogleMapScreenState();
}

class GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(
        widget.ids.location.latitude,
        widget.ids.location.longitude,
      ),
      zoom: 11,
    );
    return Scaffold(
      body: GoogleMap(
        markers: {
          Marker(
              markerId: const MarkerId('id1'),
              position: LatLng(
                widget.ids.location.latitude,
                widget.ids.location.longitude,
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
