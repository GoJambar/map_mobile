import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
//import 'package:mobile_mapsn/list_region_response.dart';
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
  late Future<Region> futureRegion;
  final dio = Dio(); // Provide a dio instance
  final logger = Logger();
  late RestClient client;
  List<Region> regions = [];

  @override
  void initState() {
    client = RestClient(dio);
    _getData();
    super.initState();
    // futureRegion = client.getRegions() as Future<Region>;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var colorss = [
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.red,
      Colors.orange
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Les régions du sénégal'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            child: Card(
              color: Colors.primaries[Random().nextInt(colorss.length)],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            regions[index].name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: regions.length,
      ),
    );
  }

  _getData() {
    client.getRegions().then((response) {
      Logger().d("$response");
      setState(() {
        regions = response;
        print(regions);
      });
    }).catchError((onError) {
      Logger().e("$onError");
    });
  }
}
