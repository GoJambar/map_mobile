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
  late Future<Region> futureRegion;
  final dio = Dio(); // Provide a dio instance
  final logger = Logger();

  @override
  void initState() {
    final client = RestClient(dio);
    super.initState();
    futureRegion = client.getRegions() as Future<Region>;
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
      body: Center(
        child: FutureBuilder<Region>(
          future: fetchRegion(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data!.name),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
