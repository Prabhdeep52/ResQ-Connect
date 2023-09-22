import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSceen2 extends StatefulWidget {
  const MapSceen2({super.key});

  @override
  State<MapSceen2> createState() => _MapSceen2State();
}

class _MapSceen2State extends State<MapSceen2> {
  static const initialCameraPos =
      CameraPosition(target: LatLng(12.8406, 80.1534), zoom: 11.5);

  GoogleMapController? _googleMapController;
  Marker? _origin;
  Marker? _destination;

  @override
  void dispose() {
    // TODO: implement dispose
    _googleMapController;
    super.dispose();
  }

  void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      //origin is not set origin/destination are both set
      // set origin

      setState(() {
        _origin = Marker(
            markerId: const MarkerId('origin'),
            infoWindow: const InfoWindow(title: "this is Origin"),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
            position: pos);
        _destination = null;
      });
    } else {
      //origin is already set

      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCameraPos,
        zoomControlsEnabled: false,
        myLocationEnabled: false,
        // ignore: non_constant_identifier_names
        onMapCreated: (Controller) => _googleMapController = Controller,
        markers: {
          if (_origin != null) _origin!,
          if (_destination != null) _destination!
        },
        onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _googleMapController!
            .animateCamera(CameraUpdate.newCameraPosition(initialCameraPos)),
        child: const Icon(Icons.filter_center_focus),
      ),
    );
  }
}
