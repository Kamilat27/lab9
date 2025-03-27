import 'package:dio/dio.dart';
import 'package:lab9/model/bank_card.dart';
import 'package:retrofit/retrofit.dart';

part 'mobile_api.g.dart';


@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')

abstract class MobileApiClient {
  factory MobileApiClient (Dio dio, {String baseUrl} ) = _MobileApiClient;

  @GET("posts")
  Future<List<BankCard>> getListData();

}