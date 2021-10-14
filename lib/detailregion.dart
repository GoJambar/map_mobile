import 'package:flutter/material.dart';
import 'package:mobile_mapsn/region.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {

  Region _regions = new Region(codeRegion: "",name: 'kedougou', superficie: 850, detail: "",
      latitude: 12, longitute: 23, population: 12, photo: "");
  Details(Region regions) {
    this._regions = regions;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Région: ${_regions.name}' ,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          Text(
            'Superficie: ${_regions.superficie}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          Text(
            'Latitude: ${_regions.latitude} ',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          Text(
            'Longitude: ${_regions.longitute}' ,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
