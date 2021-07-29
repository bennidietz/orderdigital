import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:flutter_music_player_app/network/constants.dart';
import 'package:flutter_music_player_app/utils/map_utils.dart';
import 'package:latlong2/latlong.dart';

import '../example_popup.dart';

class MyMap extends StatelessWidget {
  MyMap({Key? key}) : super(key: key);

  final PopupController _popupLayerController = PopupController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x88000000),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Kartenübersicht",
          style: TextStyle(color: Colors.white),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(14.655971, -61.024770),
          zoom: 10.3,
          boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(8.0)),
          onTap: (_) => _popupLayerController
              .hidePopup(),
        ),
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: () {
            Navigator.pop(context);
          }),
          TileLayerWidget(
            options: TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
          ),
          PopupMarkerLayerWidget(
            options: PopupMarkerLayerOptions(
              popupController: _popupLayerController,
              markers: MapUtils.getMarkers(places),
              markerRotateAlignment:
              PopupMarkerLayerOptions.rotationAlignmentFor(AnchorAlign.top),
              popupBuilder: (BuildContext context, Marker marker) =>
                  ExamplePopup(marker),
            ),
          ),
        ],
      ),
    );
  }
}
