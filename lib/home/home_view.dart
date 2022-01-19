import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

@override
class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          "Heading",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_drop_down),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsets.only(left: 152.0)),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.pink.shade600,
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 25.0,
                        offset: Offset(10.0, 10.0))
                  ],
                ),
                padding:
                    new EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0),
                child: new Card(
                  color: Colors.pink.shade200,
                  child: new Column(
                    children: <Widget>[
                      new IconButton(
                        icon:
                            new Icon(Icons.time_to_leave, color: Colors.white),
                        iconSize: 150.0,
                        onPressed: () {
                          Navigator.pushNamed(context, 'Otomotif');
                        },
                      ),
                      new Text(
                        'Otomotif',
                        style: new TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 25.0,
                        offset: Offset(10.0, 10.0))
                  ],
                ),
                padding:
                    new EdgeInsets.only(top: 20.0, bottom: 10.0, right: 10.0),
                child: new Card(
                  color: Colors.pink.shade200,
                  child: new Column(
                    children: <Widget>[
                      new IconButton(
                        icon:
                            new Icon(Icons.sports_soccer, color: Colors.white),
                        iconSize: 150.0,
                        onPressed: () {
                          Navigator.pushNamed(context, 'Sports');
                        },
                      ),
                      new Text(
                        'Sports',
                        style: new TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 25.0,
                      offset: Offset(5.0, 5.0))
                ],
              ),
              padding: new EdgeInsets.only(left: 50.0),
              child: new Card(
                color: Colors.pink.shade200,
                child: new Column(
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(Icons.person, color: Colors.white),
                      iconSize: 150.0,
                      onPressed: () {
                        Navigator.pushNamed(context, 'Profile');
                      },
                    ),
                    new Text(
                      'Profile',
                      style: new TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
