import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:otec_concepcion_capacitacion/src/models/areas_model.dart';
import 'package:otec_concepcion_capacitacion/src/pages/cursos_page.dart';

class AreasHome extends StatefulWidget {
  final int num = 0;

  @override
  _AreasHomeState createState() => _AreasHomeState();
}

class _AreasHomeState extends State<AreasHome> {
  int num2 = 0;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            alignment: Alignment.topLeft,
            child: Text(
              'Bienvenido!',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Conoce nuestras áreas de capacitación',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '${AreasPage.nombreAreas[num2]}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AreasPage.color(num2),
              fontSize: 17.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Swiper(
            layout: SwiperLayout.STACK,
            pagination: new SwiperPagination(
              builder: new DotSwiperPaginationBuilder(
                  color: Colors.blueGrey.shade300,
                  activeColor: Color.fromRGBO(237, 74, 41, 1.0)),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(
                top: 320.0,
              ),
            ),
            itemCount: AreasPage.nombreAreas.length,
            itemWidth: _screenSize.width * 0.7,
            itemHeight: _screenSize.height * 0.55,
            onIndexChanged: (num) {
              setState(() {
                num2 = num;
                num = num2;
              });
            },
            index: num2,
            onTap: (index) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CursosPage(args: index)));
            },
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 8, color: AreasPage.color(index)),
                          ),
                          child: Center(
                            child: new Image.network(
                              AreasPage.images[index],
                              fit: BoxFit.cover,
                              height: 300,
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
