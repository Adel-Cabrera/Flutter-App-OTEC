import 'dart:async';
import 'package:flutter/material.dart';
import 'package:otec_concepcion_capacitacion/src/models/areas_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConstructorPage extends StatefulWidget {
  final int index;
  final int args;

  ConstructorPage({Key key, @required this.index, @required this.args})
      : super(key: key);

  @override
  _ConstructorPageState createState() => _ConstructorPageState();
}

class _ConstructorPageState extends State<ConstructorPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool _isLoadingPage;

  @override
  void initState() {
    super.initState();
    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AreasPage.listadoTotal[widget.args][widget.index]}',
          style: TextStyle(fontSize: 14.0),
        ),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: '${AreasPage.web[widget.args][widget.index]}',
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (finish) {
              setState(() {
                _isLoadingPage = false;
              });
            },
          ),
          _isLoadingPage
              ? Container(
                  alignment: FractionalOffset.center,
                  child: CircularProgressIndicator(),
                )
              : Text(''),
        ],
      ),
    );
  }
}
