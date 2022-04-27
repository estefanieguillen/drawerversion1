import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Práctica de Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/alumno1.png'),
          ),
          Expanded(
            child: Image.asset('assets/alumno2.png'),
          ),
          Expanded(
            child: Image.asset('assets/alumna3.png'),
          ),
        ],
      ),
      drawer: Drawer(
        // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
        // a través de las opciones en el Drawer si no hay suficiente espacio vertical
        // para adaptarse a todo.
        child: ListView(
          // Importante: elimina cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Encabezado de Drawer'),
              decoration: BoxDecoration(
                color: Colors.purple[100],
              ),
            ),
            ListTile(
              title: Text('Alumno 1'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Alumno 2'),
              onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Alumno 3'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
