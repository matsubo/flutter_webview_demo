import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home:WebViewExample()));

class WebViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('郵便番号検索'),
          /*
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _controller.loadUrl('https://www.twitch.tv/');
              },
            ),
            IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(title: Text('webviewの上に表示'),);
                });
              },
            ),
          ],
          */
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _controller.goBack(),
          ),
        ),
        body: WebView(
          initialUrl: 'https://postcode.teraren.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _controller = controller;
          },
        ),
    );
  }
}

