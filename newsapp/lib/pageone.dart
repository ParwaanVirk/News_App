import 'package:flutter/material.dart';

import 'package:newsapp/brain.dart';
import 'package:newsapp/detailpage.dart';

class newspage extends StatefulWidget {
  @override
  _newspageState createState() => _newspageState();
}

class _newspageState extends State<newspage> {
  Brainiac brainiac = Brainiac();
  // List<DataforCard> tab1data;
  // List<DataforCard> tab2data;
  // List<DataforCard> tab3data;
  // List<DataforCard> tab4data;
  // List<DataforCard> tab5data;
  // List<DataforCard> tab6data;
  // List<DataforCard> tab7data;
  // List<DataforCard> tab8data;
  // List<DataforCard> tab9data;
  // List<DataforCard> tab10data;

  // @override
  // void initState() async {
  //   // TODO: implement initState
  //   super.initState();

  //   tab1data = await brainiac.getdata('bbc-news');
  //   tab2data = await brainiac.getdata('abc-news');
  //   tab3data = await brainiac.getdata('buzzfeed');
  //   tab4data = await brainiac.getdata('cnn');
  //   tab5data = await brainiac.getdata('espn');
  //   tab6data = await brainiac.getdata('fox-news');
  //   tab7data = await brainiac.getdata('google-news');
  //   tab8data = await brainiac.getdata('mtv-news');
  //   tab9data = await brainiac.getdata('national-geographic');
  //   tab10data = await brainiac.getdata('techcrunch');
  // }

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
              child: FutureBuilder(
                future: brainiac.getdata('bbc-news'),
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
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                  Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    snapshot.data[index].description,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
