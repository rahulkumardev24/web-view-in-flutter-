// web_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewExample extends StatefulWidget {
  const InAppWebViewExample({super.key});

  @override
  _InAppWebViewExampleState createState() => _InAppWebViewExampleState();
}

class _InAppWebViewExampleState extends State<InAppWebViewExample> {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InAppWebView Example'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri("https://google.com"),
          ),
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
        ),
      ),
    );
  }
}
