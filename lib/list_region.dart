import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mobile_mapsn/list_region_response.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Les régions du sénégal'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index){
              return Container(child: Text(regions[index].name),);
            },
          itemCount: regions.length,
        ),
      ),
      // Center(
      //   child: FutureBuilder<ListRegionResponse>(
      //     future: fetchRegion(),
      //     builder: (context, snapshot) {
      //       if (!snapshot.hasData) {
      //         return Center(child: CircularProgressIndicator());
      //       } else {
      //         return ListView.builder(
      //           itemCount: 1,
      //           itemBuilder: (context, index) {
      //             return ListTile(
      //               title: Text(snapshot.data!.name),
      //             );
      //           },
      //         );
      //       }
      //     },
      //   ),
      // ),
    );
  }

  _getData(){
    client.getRegions()
        .then((response) {
          Logger().d("$response");
          setState(() {
            regions = response;
          });
    }).catchError((onError){
      Logger().e("$onError");
    });
  }

}
