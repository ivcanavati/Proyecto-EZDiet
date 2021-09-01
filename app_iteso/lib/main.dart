import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyAppIteso());

class MyAppIteso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

/*void main() => runApp(MyAppIteso());
void main() {
  runApp(MaterialApp(
    home: HomePage
  ));
}

class MyAppIteso extends StatefulWidget {
  const MyAppIteso({
    Key? key,
  }) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MyAppIteso> {
  var isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Iteso'),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          Container(
            height: 64,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "El ITESO, Universidad Jesuita de Guadalajara",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "San pedro Tlaquepaque",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    print("Click Like");
                  },
                  icon: Icon(Icons.thumb_up, color: Colors.indigo)),
              IconButton(
                  onPressed: () {
                    print("Click Like");
                  },
                  icon: Icon(Icons.thumb_down, color: Colors.indigo)),
              Text("1999"),
            ],
          ),
          Container(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Enviando correo...')));
                      },
                      icon: Icon(
                        Icons.mail,
                        color: Colors.black,
                        size: 64,
                      )),
                  Container(
                    height: 64,
                  ),
                  Text("Mail"),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Llamando...')));
                      },
                      icon: Icon(
                        Icons.phone,
                        color: (isPressed) ? Colors.black : Colors.blue,
                        size: 64,
                      )),
                  Container(
                    height: 64,
                  ),
                  Text(
                    "Llamada",
                    textAlign: TextAlign.center,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Calculando Ruta...')));
                      },
                      icon: Icon(
                        Icons.directions,
                        color: Colors.black,
                        size: 64,
                      )),
                  Container(
                    height: 64,
                  ),
                  Text("Ruta"),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          Container(
            height: 64,
          ),
          Row(
            children: [
              Text(
                "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.",
                textAlign: TextAlign.justify,
              )
            ],
          )
        ],
      ),
    );
  }
}*/
