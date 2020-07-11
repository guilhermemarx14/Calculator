import 'dart:ui';

import 'package:calculator/controller/equation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _screenWidth;
  var _screenHeight;
  var controller;
  var scrollController;
  @override
  void initState() {
    controller = EquationController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    //controller.equation = '10 + -2 ^ 4 ÷ 16';
    controller.evaluate();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 24),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    //todo: auto scroll
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Observer(
                          builder: (_) => Text(
                            controller.equation,
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 40, 8, 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Observer(
                          builder: (_) => Text(
                            controller.result,
                            style:
                                TextStyle(color: Colors.black, fontSize: 50.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row1(
                  screenWidth: _screenWidth,
                  screenHeight: _screenHeight,
                  controller: controller),
              Row2(
                  screenWidth: _screenWidth,
                  screenHeight: _screenHeight,
                  controller: controller),
              Row3(
                  screenWidth: _screenWidth,
                  screenHeight: _screenHeight,
                  controller: controller),
              Row4(
                  screenWidth: _screenWidth,
                  screenHeight: _screenHeight,
                  controller: controller),
              Row5(
                  screenWidth: _screenWidth,
                  screenHeight: _screenHeight,
                  controller: controller),
            ],
          ),
        ],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  Row1(
      {Key key,
      @required screenWidth,
      @required screenHeight,
      @required this.controller})
      : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;
  var controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              'C',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.clear();
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '÷',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('÷');
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '×',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('×');
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '⌫',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.backspace();
            },
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  Row2(
      {Key key,
      @required screenWidth,
      @required screenHeight,
      @required this.controller})
      : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;
  var controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '7',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('7');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '8',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('8');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '9',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('9');
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '^',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('^');
            },
          ),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  Row3(
      {Key key,
      @required screenWidth,
      @required screenHeight,
      @required this.controller})
      : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;
  var controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '4',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('4');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('5');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '6',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('6');
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '-',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('-');
            },
          ),
        ),
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  Row4(
      {Key key,
      @required screenWidth,
      @required screenHeight,
      @required this.controller})
      : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;
  var controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('1');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('2');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('3');
            },
          ),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('+');
            },
          ),
        ),
      ],
    );
  }
}

class Row5 extends StatelessWidget {
  Row5(
      {Key key,
      @required screenWidth,
      @required screenHeight,
      @required this.controller})
      : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;
  var controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('.');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('0');
            },
          ),
        ),
        Container(
          color: Colors.black45,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '00',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.addElement('00');
            },
          ),
        ),
        Container(
          color: Colors.deepOrange,
          margin: EdgeInsets.all(1.0),
          width: _screenWidth / 4 - 2,
          height: _screenHeight / (2 * 5) - 2,
          child: FlatButton(
            child: Text(
              '=',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              controller.equals();
            },
          ),
        ),
      ],
    );
  }
}
