import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWithListScreen extends StatefulWidget {
  @override
  _MapWithListScreenState createState() => _MapWithListScreenState();
}

class _MapWithListScreenState extends State<MapWithListScreen> {
  GoogleMapController? mapController;
  List<Place> places = [
    Place(name: 'Miejsce 1', latitude: 51.5074, longitude: -0.1278),
    Place(name: 'Miejsce 2', latitude: 40.7128, longitude: -74.0060),
    Place(name: 'Miejsce 3', latitude: 48.8566, longitude: 2.3522),
    // Dodaj inne miejsca według potrzeb
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Mapa dystrybutorów'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                setState(() {
                  mapController = controller;
                });
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(51.5074, -0.1278), // Współrzędne początkowe mapy
                zoom: 10.0,
              ),
              markers: places.map((place) {
                return Marker(
                  markerId: MarkerId(place.name),
                  position: LatLng(place.latitude, place.longitude),
                  infoWindow: InfoWindow(
                    title: place.name,
                  ),
                );
              }).toSet(),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              reverse: true, // Scroll od dołu
              itemCount: places.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 140,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(places[index].name),
                          onTap: () {
                            if (mapController != null) {
                              mapController?.animateCamera(
                                CameraUpdate.newLatLng(
                                  LatLng(places[index].latitude,
                                      places[index].longitude),
                                ),
                              );
                            }
                            ;
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Place {
  final String name;
  final double latitude;
  final double longitude;

  Place({required this.name, required this.latitude, required this.longitude});
}

void main() {
  runApp(MaterialApp(
    home: MapWithListScreen(),
  ));
}
