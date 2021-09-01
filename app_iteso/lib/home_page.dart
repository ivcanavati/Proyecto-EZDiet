import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  var count = 0;

  addCount() {
    setState(() {
      count += 1;
    });
  }

  subCount() {
    setState(() {
      count -= 1;
    });
  }

  var tipController = TextEditingController();

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
                    onPressed: () => addCount(),
                    icon: Icon(Icons.thumb_up, color: Colors.indigo)),
                IconButton(
                    onPressed: () => subCount(),
                    icon: Icon(Icons.thumb_down, color: Colors.indigo)),
                Text('$count'),
              ],
            ),
            Container(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isPressed1 = !isPressed1;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Enviando correo...')));
                        },
                        icon: Icon(
                          Icons.mail,
                          color: (isPressed1) ? Colors.blue : Colors.black,
                          size: 64,
                        )),
                    Container(
                      height: 30,
                    ),
                    Text("Mail"),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                Column(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isPressed2 = !isPressed2;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Llamando...'),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.phone,
                        color: (isPressed2) ? Colors.blue : Colors.black,
                        size: 64,
                      ),
                    ),
                    Container(
                      height: 30,
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
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isPressed3 = !isPressed3;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Calculando Ruta...')));
                        },
                        icon: Icon(
                          Icons.directions,
                          color: (isPressed3) ? Colors.blue : Colors.black,
                          size: 64,
                        )),
                    Container(
                      height: 30,
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
        ));
  }
}
