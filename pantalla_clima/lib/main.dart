import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Primer App'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.all(10),
        color: Colors.deepOrangeAccent,
        child: Column(
          children: [
            Text(
              'San Francisco',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            Text('Nublado',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            Row(
              children: [
                Icon(
                  Icons.cloud,
                  size: 64,
                  color: Colors.cyan,
                ),
                Text('19 C',
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w100))
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Actualizando datos del clima...')));
                  },
                  child: Text('Actualizar datos'),
                  color: Colors.yellow),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
