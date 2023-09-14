/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.30
 * @Description: TODO
 */
import 'dart:io';

class NativeHttpClient {
  HttpClient client = HttpClient();

  void test() async {
    try {
      HttpClientRequest request = await client.get(
        'http://localhost',
        9000,
        '/login',
      );

      request.headers.contentType =
          ContentType('application', 'json', charset: 'utf-8');

      HttpClientResponse response = await request.close();
      print('$response');
    } catch (err) {
      print(err);
    } finally {
      client.close();
    }
  }

  void httGet() async {
    Uri url = Uri.parse('http://localhost:9000');

    try {
      HttpClientRequest request = await client.getUrl(url);

      HttpClientResponse response = await request.close();
    } catch (err) {
      throw Exception(err);
    } finally {
      client.close();
    }
  }

  void httpPost() async {
    Uri url = Uri.parse('http://localhost:9000');

    try {
      HttpClientRequest request = await client.postUrl(url);

      // 设置 headers
      request.headers.set(HttpHeaders.contentTypeHeader,
          "application/json"); // or headers.add()

      //  设置 data 参数
      request.write('{"title": "Foo","body": "Bar", "userId": 99}');

      HttpClientResponse response = await request.close();
    } catch (err) {
      throw Exception(err);
    } finally {
      client.close();
    }
  }

  void httpPut() {}

  void httpDelete() {}
}
