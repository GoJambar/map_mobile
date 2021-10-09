import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

import 'detailregion.dart';
import 'region.dart';

class ListRegion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListRegionState();
  }
}

class ListRegionState extends State<ListRegion> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Les régions du sénégal'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Région de Dakar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Dakar,Rufisque,Pikine,Guediawaye,Keur massar'),
            ),
          ],
        ),
      ),
    );
  }
}
