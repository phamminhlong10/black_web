import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';
@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "statusCode")
  int? code;
  String? message;
  dynamic data;

  BaseResponse({this.code, this.data, this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  List<T> parseList<T>(T Function(Map<String, dynamic> map) jsonConvertor) {
    List items = data;
    return items.map((element) {
      return jsonConvertor(element);
    }).toList();
  }
}