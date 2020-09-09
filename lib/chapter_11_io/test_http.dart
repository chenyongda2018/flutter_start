import 'dart:convert';
import 'dart:io';

void main() async {
  HttpClient client = HttpClient();
  HttpClientRequest request =
      await client.getUrl(Uri.parse("https://www.baidu.com"));

  request.headers.add("user-agent",
      "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");

  HttpClientResponse response = await request.close();
  var result = await response.transform(utf8.decoder).join();
  print("response header:${response.headers}");
  print(result);
}
