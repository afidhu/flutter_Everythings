import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static final LatLng initialPosition = LatLng(
    -6.762602648795709,
    39.20352220425603,
  );

  static final LatLng DestinationPosition = LatLng(
    -6.75867733794757,
    39.20488321054027,
  );

  LatLng? currentPosition;
  final Completer<GoogleMapController> _mapController = Completer();
  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();

    _determinePosition();

    // Draw initial static polyline (optional) WITHOUT currentPosition
    final polylinePoints = [
      LatLng(-6.761000, 39.203800),
      LatLng(-6.759500, 39.204200),
      DestinationPosition,
    ];
    generatePlyLineFromPoints(polylinePoints);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPosition == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _mapController.complete(controller);
        },
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 14,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('Current_loc'),
            position: currentPosition!,
            icon: BitmapDescriptor.defaultMarkerWithHue(30),
          ),
          Marker(
            markerId: const MarkerId('Destination_loc'),
            position: DestinationPosition,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          ),
        },
        polylines: Set<Polyline>.of(polylines.values),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permission permanently denied. Enable in settings.');
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 2, // smoother movement
      ),
    ).listen((Position? pos) {
      if (pos != null) {
        setState(() {
          currentPosition = LatLng(pos.latitude, pos.longitude);

          // Dynamic polyline from currentPosition → DestinationPosition
          generatePlyLineFromPoints([
            currentPosition!,
            DestinationPosition,
          ]);
        });

        // Smooth camera movement
        _cameraToPosition(currentPosition!);

        print("currentPosition: $pos");
      }
    });

    return position;
  }

  Future<void> _cameraToPosition(LatLng ps) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition newCameraPosition = CameraPosition(target: ps, zoom: 14);
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
  }

  void generatePlyLineFromPoints(List<LatLng> points) {
    PolylineId id = const PolylineId('poly');

    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: points,
      width: 8,
    );

    setState(() {
      polylines[id] = polyline;
    });
  }
}
