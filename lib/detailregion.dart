import 'package:appmobile_mapsn/region.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
<<<<<<< HEAD
  Regions _regions = new Regions('kedougou', '850km2');
=======
  Regions _regions = new Regions('kedougou', '850km2', '23', '77');
>>>>>>> 7ae1b9588770631e6c41261b7cfe0467db3793fd
  Details(Regions regions) {
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
            'Région: ' + _regions.nom,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          Text(
            'Superficie: ' + _regions.superficie,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
<<<<<<< HEAD
=======
          Text(
            'Latitude: ' + _regions.latitude,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          Text(
            'Longitude: ' + _regions.longitude,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
>>>>>>> 7ae1b9588770631e6c41261b7cfe0467db3793fd
        ],
      ),
    );
  }
}
