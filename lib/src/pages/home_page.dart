import 'package:flutter/material.dart';
import 'package:project/src/providers/menu_provider.dart';
import 'package:project/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /* menuProvider.cargarData().then((opciones) {
    print('_lista');
    print(opciones);
  }); */
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _listaItems(snapshot.data, context),
      );
    },
  );
}

_listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta']);
        // final route = MaterialPageRoute(builder: (context) => AlertPage());
        // Navigator.push(context, route);
      },
    );

    opciones..add(widgetTemp)..add(Divider());
  });
  return opciones;
}
