import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _tipCalculation() {
    result = double.parse(tipController.text) * (1 - group1Value);
    return result;
  }

  changeText() {
    setState(() {
      result = _tipCalculation();
      print(switchEnabled);
      if (switchEnabled) {
        result.ceil();
      }
      textresult = "Total: $result";
    });
  }

  double group1Value = 1;
  bool switchEnabled = false;
  var tipController = TextEditingController();
  double result = 0;
  var textresult = "Total: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                controller: tipController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Cost of Service",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("How was the service?"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Radio(
                  value: 0.20,
                  groupValue: group1Value,
                  onChanged: (value) {
                    setState(() {
                      group1Value = value;
                    });
                  },
                ),
                Expanded(child: Text("Amaizing 20%")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Radio(
                  value: 0.18,
                  groupValue: group1Value,
                  onChanged: (value) {
                    setState(() {
                      group1Value = value;
                    });
                  },
                ),
                Expanded(child: Text("Good 18%")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Radio(
                  value: 0.15,
                  groupValue: group1Value,
                  onChanged: (value) {
                    setState(() {
                      group1Value = value;
                    });
                  },
                ),
                Expanded(child: Text("Okay 15%")),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text("Round up tip"),
            trailing: Switch(
                value: switchEnabled,
                onChanged: (switchstate) {
                  switchEnabled = switchstate;
                  setState(() {});
                }),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: MaterialButton(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onPressed: () => changeText(),
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Text("$textresult"),
        ],
      ),
    );
  }
}
