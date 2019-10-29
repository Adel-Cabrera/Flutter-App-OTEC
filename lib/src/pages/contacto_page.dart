import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactoPage extends StatefulWidget {
  @override
  _ContactoPageState createState() => _ContactoPageState();
}

class _ContactoPageState extends State<ContactoPage> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contacto'),
      ),
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage('assets/work3.jpg'),
          ),
          SizedBox(height: 30.0),
          Text(
            'Has click y conversemos por:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn2",
                    elevation: 15.0,
                    onPressed: () async {
                      int phone = 56956717914;
                      var whatsappUrl = "whatsapp://send?phone=$phone";
                      await launch(whatsappUrl);
                    }, // button pressed
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              Container(
                width: 80.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    heroTag: "btn1",
                    elevation: 15.0,

                    onPressed: () async {
                      await launch(
                          'mailto:contacto@mundodiferente.cl?subject=Consulta sobre cursos&body=Hola, equipo de Mundo Diferente.');
                    }, // button pressed
                    child: Icon(
                      Icons.mail,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Column(
            children: <Widget>[
              Text(
                'Estamos ubicados en:',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'Anibal Pinto 817 Of. 406, Concepción – Chile',
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Para contactarnos directamente:',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '41-2929465 / 41-2929467 / +56974083352 ',
              ),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: AssetImage('assets/logomd.png'),
                width: 150.0,
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
