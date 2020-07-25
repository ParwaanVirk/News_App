import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
  final String fnlData;
  DetailPage(this.fnlData);
}

class _DetailPageState extends State<DetailPage> {
  String fnlUrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    String fnlurl = widget.fnlData;
    fnlUrl = fnlurl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('News Details'),
      ),
      body: WebView(
        initialUrl: fnlUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
