import 'package:flutter/material.dart';

import 'package:newsapp/brain.dart';
import 'package:newsapp/detailpage.dart';
import 'package:newsapp/constants.dart';

class newspage extends StatefulWidget {
  @override
  _newspageState createState() => _newspageState();
}

class _newspageState extends State<newspage> {
  Brainiac brainiac =
      Brainiac(); // creating object of Brainiac Class from brain.dart

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'News App ',
            style: TextStyle(fontSize: 16.0),
          ),
          bottom: PreferredSize(
              // tabBar== Displaying the names of the News Sources/
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white.withOpacity(0.3),
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text('BBC'),
                    ),
                    Tab(
                      child: Text('ABC News'),
                    ),
                    Tab(
                      child: Text('BuzzFeed'),
                    ),
                    Tab(
                      child: Text('CNN'),
                    ),
                    Tab(
                      child: Text('ESPN'),
                    ),
                    Tab(
                      child: Text('Fox News'),
                    ),
                    Tab(
                      child: Text('Google News'),
                    ),
                    Tab(
                      child: Text('MTV News'),
                    ),
                    Tab(
                      child: Text('National Geographic'),
                    ),
                    Tab(
                      child: Text('TechCrunch'),
                    )
                  ]),
              preferredSize: Size.fromHeight(30.0)),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              // each container contains news from one Source
              child: FutureBuilder(
                future: brainiac.getdata('bbc-news'), // news source
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  // creating vewbiew page form here
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },

                              // specifications for each card layout
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('abc-news'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('buzzfeed'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('cnn'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    snapshot.data[index].title,
                                    style: kstylingforTitle,
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('espn'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('fox-news'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('google-news'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    snapshot.data[index].title,
                                    style: kstylingforTitle,
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('mtv-news'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    snapshot.data[index].title,
                                    style: kstylingforTitle,
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('national-geographic'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Container(
              child: FutureBuilder(
                future: brainiac.getdata('techcrunch'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading. . ."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Expanded(
                            child: ReusableCard(
                              onPress: () {
                                print(snapshot.data[index].url);
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index].url),
                                  ),
                                );
                              },
                              colorcont: Colors.white,
                              cardChild: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                      snapshot.data[index].urlToImage),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(snapshot.data[index].title,
                                      style: kstylingforTitle),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(snapshot.data[index].description,
                                      style: kstylingforDescription),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'Date: ' +
                                        snapshot.data[index].publishedAt
                                            .substring(0, 10),
                                    style: kstylingforDateText,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  // ReusableCard class is used the cards displated.
  ReusableCard(
      {@required this.colorcont, @required this.cardChild, this.onPress});

  final Color colorcont;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorcont,
        ),
      ),
    );
  }
}
