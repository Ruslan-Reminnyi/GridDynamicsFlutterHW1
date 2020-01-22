import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Insta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => exit(0),
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text(widget.title),
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[_getImage(), _setActions(), _getText(), _getNavigationBar()]))
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getImage() {
    return Image.network(
      'https://www.planetware.com/photos-large/SEY/best-islands-fiji.jpg',
    );
  }

  Widget _setActions() {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Positioned(
          left: 0,
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.favorite_border),
          ),
        ),
        Positioned(
          left: 40,
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ),
        Positioned(
          left: 80,
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.near_me),
          ),
        ),
        Positioned(
          right: -5,
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.bookmark_border),
          ),
        ),
      ]),
    );
  }

  Widget _getText() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Нравится: 912 241',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
                text: 'wikipedia ',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                    '''Fiji is an island country in Melanesia, part of Oceania in the South Pacific Ocean about 1,100 nautical miles northeast of New Zealand\'s North Island. Fiji consists of an archipelago of more than 330 islands—of which 110 are permanently inhabited—and more than 500 islets, amounting to a total land area of about 18,300 square kilometres. The capital, Suva, on Viti Levu, serves as the country\'s principal cruise-ship port.''',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                    // navigate to desired screen
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '#griddynamics_kharkov #workshop #flutter',
                style: TextStyle(color: Colors.blueAccent),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                    text: '22 января 2020 \u2022',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Показать перевод',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        // navigate to desired screen
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            title: Text('Home')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search),
            title: Text('Search')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.add_circle_outline),
            title: Text('Add')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.favorite_border),
            title: Text('News')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person_outline),
            title: Text('Profile')
        ),
      ],
    );
  }
}
