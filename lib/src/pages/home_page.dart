import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:otec_concepcion_capacitacion/src/widgets/card_swipper.dart';
import 'contacto_page.dart';
import 'about_page.dart';
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _menu(context),
      appBar: AppBar(
        title: Text('Mundo Diferente OTEC'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/imagwork.jpg'),
              ),
            ),
            AreasHome(),
          ],
        ),
      ),
    );
  }

  Widget _menu(context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
              image: AssetImage('assets/logomd.png'),
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            title: _textoEstilo('Inicio'),
            onTap: () {
              Navigator.pop(context);
            },
            leading: _iconoLeading(
              Icons.home,
            ),
          ),
          ListTile(
            title: _textoEstilo('Sobre nosotros'),
            onTap: () {
              Navigator.of(context).pop();

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
            leading: _iconoLeading(
              Icons.assignment_ind,
            ),
          ),
          ListTile(
            title: _textoEstilo('Contacto'),
            onTap: () {
              Navigator.of(context).pop();

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactoPage()));
            },
            leading: _iconoLeading(
              Icons.phone_in_talk,
            ),
          ),
          ListTile(
            title: _textoEstilo('Compartir aplicación'),
            onTap: () {
              Share.share(
                  'Capacita a tu equipo ahora! https://play.google.com/store/apps/details?id=com.mundodiferente.otec_concepcion_capacitacion');
            },
            leading: _iconoLeading(
              Icons.share,
            ),
          ),
          ListTile(
            title: _textoEstilo('Salir'),
            onTap: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
            leading: _iconoLeading(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
    );
  }

  Widget _textoEstilo(String texto) {
    return Text(
      '$texto',
      style: TextStyle(color: Color.fromRGBO(237, 74, 41, 1.0)),
    );
  }

  Widget _iconoLeading(IconData icono) {
    return Icon(
      icono,
      color: Color.fromRGBO(237, 74, 41, 1.0),
    );
  }
}
