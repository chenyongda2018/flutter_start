import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketPage extends StatefulWidget {
  @override
  _WebSocketPageState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends State<WebSocketPage> {

  IOWebSocketChannel channel;

  @override
  void initState() {
    super.initState();
    channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WEB SOCKET"),),
      body: Center(
        child: StreamBuilder(
          stream: channel.stream,
          builder: (ctx,snapshot) {
            return Text(snapshot.hasData ? "${snapshot.data}" : "no data");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {
          channel.sink.add("msg1");
        },
      ),
    );
  }


  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
