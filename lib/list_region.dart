import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'restclient.dart';
import 'region.dart';

class ListRegion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListRegionState();
  }
}

class ListRegionState extends State<ListRegion> {
  final dio = Dio(); // Provide a dio instance
  final logger = Logger();

  @override
  void initState() {
    final client = RestClient(dio);
    super.initState();
    client.getRegions().then((it) => logger.i(it));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Les régions du sénégal'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}
