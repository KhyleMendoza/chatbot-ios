import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const WebViewContainer(),
      ),
    );
  }
}

class WebViewContainer extends StatelessWidget {
  const WebViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Uri.dataFromString(
        '''
        <html>
          <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
            <style>
              body {
                margin: 0;
                overflow: hidden;
              }
              iframe[src*="chatbase"] {
                  transform: translateY(28px);
              }
            </style>
          </head>
          <body>
            <iframe
              src="https://www.chatbase.co/chatbot-iframe/Y1LoJWZjtWX_n_dn_m0Ku"
              width="100%"
              style="height: 100%; min-height: 700px; border: none;">
            </iframe>
          </body>
        </html>
        ''',
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
      ).toString(),
      javascriptMode: JavascriptMode.unrestricted,
      gestureRecognizers: Set(),
    );
  }
}
