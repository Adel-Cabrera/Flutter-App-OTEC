import 'package:flutter/material.dart';
import 'package:otec_concepcion_capacitacion/src/models/areas_model.dart';
import 'constructor_page.dart';

class CursosPage extends StatelessWidget {
  final int args;

  CursosPage({Key key, @required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AreasPage.color(args),
        title: Text(
          '${AreasPage.nombreAreas[args]}',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _myListView(context),
          Expanded(
            child: Image(
              image: AssetImage('assets/isologo.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: AreasPage.listadoTotal[args].length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(AreasPage.leadingIcono(args),
                color: AreasPage.color(args)),
            title: Text(
              AreasPage.listadoTotal[args][index],
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConstructorPage(index: index, args: args)));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: AreasPage.color(args),
            ),
          ),
          elevation: 8.0,
        );
      },
    );
  }
}
