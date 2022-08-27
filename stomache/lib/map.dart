import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const maps());
}


class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);


  @override
  State<maps> createState() => _mapsState();

}

class _mapsState extends State<maps> {
  final LatLng _location = const LatLng(30.0272, 31.4917);
  late GoogleMapController mapController;
  void _myMaCreated (GoogleMapController controller){
    mapController = controller;
  }

  final CameraPosition gizaPyramids = CameraPosition(target: LatLng(29.980088,31.132545),zoom: 14);
  Future<void> gotGizaPyramids()async{
    final GoogleMapController controller = await mapController;
    controller.animateCamera(CameraUpdate.newCameraPosition(gizaPyramids));
  }

  // void getCurrentLocation()async{
  //   final Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high
  //   );
  //   final CameraPosition MyLocation = CameraPosition(target: LatLng(position.latitude,position.longitude),
  //       bearing: 45.0,
  //       tilt: 50.0,
  //       zoom: 20.0);
  //   setState(() async {
  //     final GoogleMapController controller = await mapController;
  //     controller.animateCamera(CameraUpdate.newCameraPosition(MyLocation));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text('Our Branch'),
        ),
        body:
        GoogleMap(
          mapType: MapType.normal,
          onMapCreated:_myMaCreated ,
          initialCameraPosition: CameraPosition(
              target: _location ,bearing: 45.0,tilt: 10 , zoom: 18),

        ),


        // floatingActionButton: FloatingActionButton.extended(onPressed: getCurrentLocation, label: Icon(Icons.gps_fixed)),
      ),
    );
  }
}