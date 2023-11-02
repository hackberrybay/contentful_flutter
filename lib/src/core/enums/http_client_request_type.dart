import 'package:http/http.dart' as http;

enum HttpClientRequestType { get, post, put, delete }

extension HttpClientRequestTypeX on HttpClientRequestType {
  bool get isGet => this == HttpClientRequestType.get;
  bool get isPost => this == HttpClientRequestType.post;
  bool get isPut => this == HttpClientRequestType.put;
  bool get isDelete => this == HttpClientRequestType.delete;

  Future<http.Response> callFunction(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
  }) {
    switch (this) {
      case HttpClientRequestType.get:
        return http.get(url, headers: headers);
      case HttpClientRequestType.post:
        return http.post(url, headers: headers, body: body);
      case HttpClientRequestType.put:
        return http.put(url, headers: headers, body: body);
      case HttpClientRequestType.delete:
        return http.delete(url, headers: headers, body: body);
    }
  }
}
