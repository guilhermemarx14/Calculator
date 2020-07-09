import 'package:calculator/controller/equation_controller.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    controller = EquationController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    var value = controller.evaluate('10 + -2 ^ 4 ÷ 16');
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '10 + -2 ^ 4 ÷ 16',
                      style: TextStyle(color: Colors.black, fontSize: 35.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 40, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$value',
                      style: TextStyle(color: Colors.black, fontSize: 50.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row1(screenWidth: _screenWidth, screenHeight: _screenHeight),
              Row2(screenWidth: _screenWidth, screenHeight: _screenHeight),
              Row3(screenWidth: _screenWidth, screenHeight: _screenHeight),
              Row4(screenWidth: _screenWidth, screenHeight: _screenHeight),
              Row5(screenWidth: _screenWidth, screenHeight: _screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  Row1({
    Key key,
    @required screenWidth,
    @required screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;

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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  Row2({
    Key key,
    @required screenWidth,
    @required screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;

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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  Row3({
    Key key,
    @required screenWidth,
    @required screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;

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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  Row4({
    Key key,
    @required screenWidth,
    @required screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;

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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Row5 extends StatelessWidget {
  Row5({
    Key key,
    @required screenWidth,
    @required screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  var _screenWidth;
  var _screenHeight;

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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
