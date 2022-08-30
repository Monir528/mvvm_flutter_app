import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:mvvm_project/data/network/baseApiResponses.dart';
import '../app_excaptions.dart';

class NetworkApiResponse extends BaseApiResponse {
  @override
  Future getGetApiResponse(String uri) async {

    dynamic jsonResponse;

    try{
      final response = await get(Uri.parse(uri)).timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    }on SocketException{
      throw FetchDataException("No internet connection");
    }
    return jsonResponse;

  }

  @override
  Future getPostApiResponse(String uri, dynamic data) async {

    dynamic jsonResponse;
    try{

      Response response = await post(
        Uri.parse(uri),
        body: data,
      ).timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);

    }on SocketException {
      throw FetchDataException("No internet connection");
    }
    return jsonResponse;

  }


  dynamic returnResponse(Response response){

    switch(response.statusCode){
        case 200:
          return jsonDecode(response.body);
      case 400:
        return FetchDataException(response.body.toString());
      case 500:
      case 404:
        return FetchDataException(response.body.toString());
        default:
          throw FetchDataException("error accured while communication with server");
    }

  }

}