import 'package:flutter/material.dart';

class AreasPage {
  static final _cursosLiderazgo = [
    'Gestión de Equipos de Trabajo',
    'Liderazgo y Gestión de Equipos',
    'Comunicación Efectiva y Manejo de Conflictos',
    'Liderazgo y Gestión Fuerza de Venta'
  ];

  static final _webLiderazgo = [
    'https://www.mundodiferente.cl/cursos-sence/liderazgo-y-habilidades-directivas/gestion-de-equipos-de-trabajo/',
    'https://www.mundodiferente.cl/cursos-sence/liderazgo-y-habilidades-directivas/liderazgo-y-gestion-de-equipos/',
    'https://www.mundodiferente.cl/cursos-sence/liderazgo-y-habilidades-directivas/comunicacion-efectiva-y-manejo-de-conflictos/',
    'https://www.mundodiferente.cl/cursos-sence/liderazgo-y-habilidades-directivas/liderazgo-y-gestion-fuerza-de-venta/',
  ];

  static final _cursosGestion = [
    'Administración y Gestión de Bibliotecas',
    'Técnicas de Archivos y Gestión Documental',
    'Gestión Integral de Bodegas e Inventarios'
  ];

  static final _webGestion = [
    'https://www.mundodiferente.cl/cursos-sence/gestion-administrativa/administracion-y-gestion-de-bibliotecas/',
    'https://www.mundodiferente.cl/cursos-sence/gestion-administrativa/tecnicas-de-archivos-y-gestion-documental/',
    'https://www.mundodiferente.cl/cursos-sence/gestion-administrativa/gestion-integral-de-bodegas-e-inventarios/'
  ];

  static final _cursosVenta = [
    'Excelencia en Calidad de Servicio y Atención al Cliente',
    'Venta no Presencial y Atención Telefónica',
    'Venta, Negociación y Fidelización de Clientes',
  ];

  static final _webVenta = [
    'https://www.mundodiferente.cl/cursos-sence/venta-calidad-y-servicio-al-cliente/excelencia-en-calidad-de-servicio-y-atencion-al-cliente/',
    'https://www.mundodiferente.cl/cursos-sence/venta-calidad-y-servicio-al-cliente/venta-no-presencial-y-atencion-telefonica/',
    'https://www.mundodiferente.cl/cursos-sence/venta-calidad-y-servicio-al-cliente/venta-negociacion-y-fidelizacion-de-clientes/',
  ];

  static final _cursosYoga = ['Mindfulness y Yoga Laboral'];

  static final _webYoga = [
    'https://www.mundodiferente.cl/cursos-sence/manejo-del-estres-y-autocuidado/mindfulness-y-yoga-laboral/'
  ];

  static final _cursosRCP = [
    'Técnicas de Primeros Auxilios',
    'Técnicas de Autocuidado',
    'Protocolos de Emergencia en las Organizaciones',
  ];

  static final _webRCP = [
    'https://www.mundodiferente.cl/cursos-sence/prevencion-de-riesgos-primeros-auxilios-y-rcp/primeros-auxilios-y-rcp/',
    'https://www.mundodiferente.cl/cursos-sence/prevencion-de-riesgos-primeros-auxilios-y-rcp/autocuidado-y-prevencion-de-riesgos/',
    'https://www.mundodiferente.cl/cursos-sence/prevencion-de-riesgos-primeros-auxilios-y-rcp/protocolos-de-emergencia/',
  ];

  static final _cursosInformatica = [
    'Excel Básico, Intermedio o Avanzado',
    'Aplicacion de Microsoft Project en la Empresa',
  ];

  static final _webInformatica = [
    'https://www.mundodiferente.cl/cursos-sence/informatica-competencias-tecnicas/excel-basico-intermedio-avanzado/',
    'https://www.mundodiferente.cl/cursos-sence/informatica-competencias-tecnicas/microsoft-project-en-la-empresa/',
  ];

  static final _cursosInclusion = [
    'Lengua de Señas',
    'Ley de Inclusión Laboral',
  ];

  static final _webInclusion = [
    'https://www.mundodiferente.cl/cursos-sence/inclusion/lengua-de-senas/',
    'https://www.mundodiferente.cl/cursos-sence/inclusion/ley-de-inclusion-laboral/',
  ];

  static final _cursosEmprendimiento = [
    'Elaboración y Aplicación de Planes de Negocios',
  ];

  static final _webEmprendimiento = [
    'https://www.mundodiferente.cl/cursos-sence/emprendimiento-e-innovacion/planes-de-negocios/',
  ];

  static final _cursosLeyes = [
    'Inclusión Laboral',
    'Legislación Laboral Vigente',
    'Derecho del Trabajo y Actualidad Laboral',
    'Estatuto Administrativo para Funcionarios Públicos',
    'Derechos Fundamentales en la Empresa',
  ];

  static final _webLeyes = [
    'https://www.mundodiferente.cl/cursos-sence/aspectos-eticos-y-legales/inclusion-laboral/',
    'https://www.mundodiferente.cl/cursos-sence/aspectos-eticos-y-legales/derecho-del-trabajo/',
    'https://www.mundodiferente.cl/cursos-sence/aspectos-eticos-y-legales/actualidad-laboral-vigente/',
    'https://www.mundodiferente.cl/cursos-sence/aspectos-eticos-y-legales/estatuto-administrativo-funcionarios-publicos/',
    'https://www.mundodiferente.cl/cursos-sence/aspectos-eticos-y-legales/derechos-en-la-empresa/',
  ];

  static final _cursosIdiomas = [
    'Inglés Nivel Básico',
    'Inglés Nivel Intermedio',
  ];

  static final _webIdiomas = [
    'https://www.mundodiferente.cl/cursos-sence/idiomas/ingles-nivel-basico/',
    'https://www.mundodiferente.cl/cursos-sence/idiomas/ingles-nivel-intermedio/',
  ];

  static List<List> listadoTotal = [
    _cursosLiderazgo,
    _cursosGestion,
    _cursosVenta,
    _cursosYoga,
    _cursosRCP,
    _cursosInformatica,
    _cursosInclusion,
    _cursosEmprendimiento,
    _cursosLeyes,
    _cursosIdiomas,
  ];

  static List<List> web = [
    _webLiderazgo,
    _webGestion,
    _webVenta,
    _webYoga,
    _webRCP,
    _webInformatica,
    _webInclusion,
    _webEmprendimiento,
    _webLeyes,
    _webIdiomas,
  ];

  static const List<String> nombreAreas = [
    'Liderazgo y Habilidades Directivas',
    'Gestión Administrativa',
    'Venta, Calidad y Servicio al Cliente',
    'Manejo del Estrés y Autocuidado',
    'Prevención de Riesgos. Primeros Auxilios y RCP',
    'Informática y Competencias Técnicas',
    'Inclusión',
    'Emprendimiento e Innovación',
    'Aspectos Éticos y Legales',
    'Idiomas',
  ];

  static const List<String> images = [
    'https://www.mundodiferente.cl/wp-content/uploads/2018/01/01.png',
    'https://www.mundodiferente.cl/wp-content/uploads/2018/01/002.png',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/1.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2018/01/003.png',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/2.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/3.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/4.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/5.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/7.jpg',
    'https://www.mundodiferente.cl/wp-content/uploads/2019/05/8.jpg',
  ];

  static color(int index) {
    final List colores = [
      Color.fromRGBO(211, 51, 17, 1.0),
      Color.fromRGBO(90, 26, 12, 1.0),
      Color.fromRGBO(227, 148, 40, 1.0),
      Color.fromRGBO(118, 205, 79, 1.0),
      Color.fromRGBO(221, 72, 100, 1.0),
      Color.fromRGBO(80, 193, 210, 1.0),
      Color.fromRGBO(137, 180, 24, 1.0),
      Color.fromRGBO(93, 200, 178, 1.0),
      Color.fromRGBO(127, 147, 144, 1.0),
      Color.fromRGBO(185, 180, 78, 1.0),
    ];

    var color = colores[index];
    return color;
  }

  static leadingIcono(int index) {
    final List iconos = [
      Icons.person,
      Icons.assignment,
      Icons.attach_money,
      Icons.all_inclusive,
      Icons.add_to_photos,
      Icons.rss_feed,
      Icons.library_books,
      Icons.near_me,
      Icons.account_balance,
      Icons.speaker_notes
    ];

    var icon = iconos[index];
    return icon;
  }
}
