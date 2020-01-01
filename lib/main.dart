import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NewApp();
  }
}

class NewApp extends State<MyApp> {
  double number = 0;
  double weightMultiplier = 0;
  double ageMultiplier = 0;
  double recommended = 0;
  double missing = 0;
  String message = "";

  void calculate(double weight) {
    setState(() {
      weightMultiplier = weight / 2.2;
      recommended = weightMultiplier * ageMultiplier / 226.4;
      recommended = double.parse(recommended.toStringAsFixed(2));
      missing = recommended - number;
    });
  }

  void check(double age) {
    setState(() {
      if (age < 30) {
        ageMultiplier = 40;
        recommended = weightMultiplier * 40 / 226.4;
      } else if (age > 30 && age < 55) {
        ageMultiplier = 35;
        recommended = weightMultiplier * 35 / 226.4;
      } else {
        ageMultiplier = 30;
        recommended = weightMultiplier * 30 / 226.4;
      }
      recommended = double.parse(recommended.toStringAsFixed(2));
      missing = recommended - number;
    });
  }

  void addWater() {
    setState(() {
      number++;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractWater() {
    setState(() {
      number--;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void addJuice() {
    setState(() {
      number += 0.85;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractJuice() {
    setState(() {
      number -= 0.85;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void addSoda() {
    setState(() {
      number += 0.9;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractSoda() {
    setState(() {
      number -= 0.9;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void addSoup() {
    setState(() {
      number += 0.92;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractSoup() {
    setState(() {
      number -= 0.92;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void addFruit() {
    setState(() {
      number += 0.6;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractFruit() {
    setState(() {
      number -= 0.6;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void addVegetable() {
    setState(() {
      number += 0.25;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void subtractVegetable() {
    setState(() {
      number -= 0.25;
      missing = recommended - number;
      number = double.parse(number.toStringAsFixed(2));
      if (missing <= 0) {
        message = 'Congratulations! You have reached the recommended '
            'daily water intake of $recommended cups for today!';
      } else {
        missing = double.parse(missing.toStringAsFixed(2));
        message = 'To reach the recommended daily water intake, '
            'you still need to consume $missing cups of water.';
      }
    });
  }

  void reset() {
    setState(() {
      number = 0;
      missing = 0;
      recommended = 0;
      message = ' ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.cyan, accentColor: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Staydrated',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 35.0,
                  fontFamily: 'Oswald',
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: new GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            ' ',
                            style: new TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                              width: 250.0,
                              height: 250.0,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage('images/droplet.png'),
                                  fit: BoxFit.fill,
                                ),
                              ))
                        ],
                      ),
                      new TextField(
                        decoration: new InputDecoration(
                          labelText: "Enter your weight(lb.): ",
                          labelStyle: new TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (userWeight) {
                          var weight = double.parse(userWeight);
                          calculate(weight);
                        },
                      ),
                      new TextField(
                        decoration: new InputDecoration(
                          labelText: "Enter your age: ",
                          labelStyle: new TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (userAge) {
                          var age = double.parse(userAge);
                          check(age);
                        },
                      ),
                      new Text(
                        'Current water intake: $number cups.',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          fontFamily: 'Oswald',
                        ),
                      ),
                      new Text(
                        'Recommended water intake: $recommended cups.',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          fontFamily: 'Oswald',
                        ),
                      ),
                      new Text(
                        message,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          fontFamily: 'Oswald',
                        ),
                      ),
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text(
                              'One cup of ',
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            new RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.black,
                              color: Colors.blue,
                              onPressed: addWater,
                              child: new Text("Water"),
                            ),
                            new RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.black,
                              color: Colors.blue,
                              onPressed: subtractWater,
                              child: new Text("Undo"),
                            ),
                          ]),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'One cup of ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: addJuice,
                            textColor: Colors.black,
                            color: Colors.yellow,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Juice",
                            ),
                          ),
                          new RaisedButton(
                            onPressed: subtractJuice,
                            textColor: Colors.black,
                            color: Colors.yellow,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Undo",
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'One cup of ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: addSoda,
                            textColor: Colors.black,
                            color: Colors.red,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Soda",
                            ),
                          ),
                          new RaisedButton(
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.red,
                            onPressed: subtractSoda,
                            child: new Text("Undo"),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'One cup of ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: addSoup,
                            textColor: Colors.black,
                            color: Colors.purple[300],
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Soup",
                            ),
                          ),
                          new RaisedButton(
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.purple[300],
                            onPressed: subtractSoup,
                            child: new Text("Undo"),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'One serving of ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: addFruit,
                            textColor: Colors.black,
                            color: Colors.orange,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Fruits",
                            ),
                          ),
                          new RaisedButton(
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.orange,
                            onPressed: subtractFruit,
                            child: new Text("Undo"),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'One serving of ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: addVegetable,
                            textColor: Colors.black,
                            color: Colors.green,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Vegetables",
                            ),
                          ),
                          new RaisedButton(
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.green,
                            onPressed: subtractVegetable,
                            child: new Text("Undo"),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'New day? Good morning! ',
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          new RaisedButton(
                            onPressed: reset,
                            textColor: Colors.white,
                            color: Colors.black,
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "Reset",
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            ' ',
                            style: new TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            'Alvin Wang',
                            style: new TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
