import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class Geolocatorwidget extends StatefulWidget {
  const Geolocatorwidget({super.key});

  @override
  State<Geolocatorwidget> createState() => _GeolocatorwidgetState();
}

class _GeolocatorwidgetState extends State<Geolocatorwidget> {
  Position? position;

  fetchPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location service is disabled');
      return;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Location permission denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Permission denied forever');
      return;
    }

    try {
      Position currentPosition = await Geolocator.getCurrentPosition();
      setState(() {
        position = currentPosition;
        latitude = currentPosition.latitude.toString();
      });
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error getting location');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              position == null ? 'Location' : position.toString(),
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                fetchPosition();
              },
              child: Text('Get Location'),
            ),
          ],
        ),
      ),
    );
  }
}
