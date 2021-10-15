/*import 'package:json_annotation/json_annotation.dart';*/
import 'package:mobile_mapsn/region.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'restclient.g.dart';

@RestApi(baseUrl: "http://192.168.1.13:8080/api")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/regions")
  Future<List<Region>> getRegions();
}
/*
@JsonSerializable()
class Task {
  String? id;
  String? name;
  String? avatar;
  String? createdAt;

  Task({this.id, this.name, this.avatar, this.createdAt});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);

}
*/