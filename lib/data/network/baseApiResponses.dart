abstract class BaseApiResponse {

  Future<dynamic> getGetApiResponse(String uri);
  Future<dynamic> getPostApiResponse(String uri, dynamic data);

}