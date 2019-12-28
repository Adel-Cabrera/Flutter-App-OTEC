import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:otec_concepcion_capacitacion/src/models/areas_model.dart';
import 'constructor_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CursosPage extends StatelessWidget {
  final int args;

  CursosPage({Key key, @required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: AreasPage.color(args),
//        title: Text(
//          '${AreasPage.nombreAreas[args]}',
//          style: TextStyle(
//            fontSize: 14.0,
//          ),
//        ),
//      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: AreasPage.color(args), titleSpacing: 30.0,
            centerTitle: true, forceElevated: true, elevation: 10.0,
            bottom: PreferredSize(
                child: Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                  size: 40.0,
                ),
                preferredSize: Size.fromHeight(50.0)),

            pinned: false,
            floating: true,
//            snap: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              title: AutoSizeText(
                '${AreasPage.nombreAreas[args]}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              titlePadding: EdgeInsets.all(80.0),
              background: Stack(
                children: <Widget>[
                  Image(
                    //image: NetworkImage(AreasPage.images[args]),
                    image: NetworkImage(
                      AreasPage.images[args],
                    ),
                    width: double.infinity, fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//            title: AutoSizeText(
//              '${AreasPage.nombreAreas[args]}',
//              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//              maxLines: 3,
//              textAlign: TextAlign.center,
//            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    _myListView(context),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image(
                        image: AssetImage('assets/isologo.png'),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                );
              },
              childCount: 1,
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
              Fluttertoast.showToast(
                  msg: "Desliza hacia abajo para ver los detalles del curso.",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: AreasPage.color(args),
                  textColor: Colors.white,
                  fontSize: 16.0);

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
