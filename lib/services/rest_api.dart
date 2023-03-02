import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:the_black_web/model/base_response.dart';
part 'rest_api.g.dart';

@RestApi(baseUrl: "https://api.theblack-app.com:6445/api/v1/")
abstract class RestClient{
  factory RestClient(Dio dio) = _RestClient;

  @GET("/user/list-user-demo")
  Future<BaseResponse> getListUser(@Queries() Map<String, dynamic> queries);
}