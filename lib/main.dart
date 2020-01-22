import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Insta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(

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
