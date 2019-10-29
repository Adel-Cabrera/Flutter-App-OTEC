import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre nosotros'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Image(
              image: AssetImage('assets/work2.jpg'),
            ),
            Text(
              'Mundo Diferente Consultoría y Formación',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Nuestro foco es generar desarrollo humano en las organizaciones, nos adecuamos a las necesidades y requerimientos de nuestros clientes y usuarios, buscando entregar una oferta atractiva, de avanzada y de alto impacto.',
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Algunos de nuestras líneas de trabajo son:',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _servicios(Icons.person_pin, 'Consultoría'),
                _servicios(Icons.brightness_5, 'Capacitación'),
                _servicios(Icons.wc, 'Elearning'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _servicios(IconData icon, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Color.fromRGBO(237, 74, 41, 1.0),
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          desc,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
