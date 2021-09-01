import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var massController = TextEditingController();
  var hightController = TextEditingController();
  var result;
  bool isPressed1 = true;
  bool isPressed2 = false;

  imcCalc() {
    result = double.parse(massController.text) /
        (double.parse(hightController.text) *
            double.parse(hightController.text));
    if (isPressed1) {
      _showcontentMale()();
    } else
      _showcontentFemale();
  }

  _showcontentMale() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tu IMC: $result'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  height: 20,
                ),
                Text('Indice para Hombres'),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(children: [
                      Row(
                        children: [Text("Edad")],
                      ),
                      Row(
                        children: [Text("15-20")],
                      ),
                      Row(
                        children: [Text("21-25")],
                      ),
                      Row(
                        children: [Text("26-30")],
                      ),
                      Row(
                        children: [Text("31-35")],
                      ),
                      Row(
                        children: [Text("36-45")],
                      ),
                      Row(
                        children: [Text("46-50")],
                      ),
                      Row(
                        children: [Text("51-60")],
                      ),
                      Row(
                        children: [Text("60+")],
                      ),
                    ]),
                    Column(children: [
                      Row(
                        children: [Text("IMC ideal")],
                      ),
                      Row(
                        children: [Text("18-22")],
                      ),
                      Row(
                        children: [Text("21-23")],
                      ),
                      Row(
                        children: [Text("22-24")],
                      ),
                      Row(
                        children: [Text("24-26")],
                      ),
                      Row(
                        children: [Text("25-27")],
                      ),
                      Row(
                        children: [Text("28-30")],
                      ),
                      Row(
                        children: [Text("29-31")],
                      ),
                      Row(
                        children: [Text("29-31")],
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  _showcontentFemale() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tu IMC: $result'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  height: 20,
                ),
                Text('Indice para Mujeres'),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(children: [
                      Row(
                        children: [Text("Edad")],
                      ),
                      Row(
                        children: [Text("15-20")],
                      ),
                      Row(
                        children: [Text("21-25")],
                      ),
                      Row(
                        children: [Text("26-30")],
                      ),
                      Row(
                        children: [Text("31-35")],
                      ),
                      Row(
                        children: [Text("36-45")],
                      ),
                      Row(
                        children: [Text("46-50")],
                      ),
                      Row(
                        children: [Text("51-60")],
                      ),
                      Row(
                        children: [Text("60+")],
                      ),
                    ]),
                    Column(children: [
                      Row(
                        children: [Text("IMC ideal")],
                      ),
                      Row(
                        children: [Text("18-22")],
                      ),
                      Row(
                        children: [Text("21-23")],
                      ),
                      Row(
                        children: [Text("22-24")],
                      ),
                      Row(
                        children: [Text("24-26")],
                      ),
                      Row(
                        children: [Text("25-27")],
                      ),
                      Row(
                        children: [Text("28-30")],
                      ),
                      Row(
                        children: [Text("29-31")],
                      ),
                      Row(
                        children: [Text("29-31")],
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular IMC'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          Text(
            "Ingrese sus datos para calcular el IMC",
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                      padding: EdgeInsets.all(30),
                      onPressed: () {
                        setState(() {
                          isPressed1 = !isPressed1;
                          isPressed2 = !isPressed1;
                        });
                      },
                      icon: Icon(
                        Icons.male,
                        color: (isPressed1) ? Colors.blue : Colors.grey[400],
                        size: 32,
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Column(
                children: [
                  IconButton(
                    padding: EdgeInsets.all(30),
                    onPressed: () {
                      setState(() {
                        isPressed2 = !isPressed2;
                        isPressed1 = !isPressed2;
                      });
                    },
                    icon: Icon(
                      Icons.female,
                      color: (isPressed2) ? Colors.blue : Colors.grey[400],
                      size: 32,
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.monitor_weight),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                controller: massController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Inserte Peso en Kg",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.square_foot),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                controller: hightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Inserte Altura en M",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: MaterialButton(
                    child: Text(
                      "Calcular",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => imcCalc(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
