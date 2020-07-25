import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const apikey = '065a9f57a03f4ce897dfa1356aa2ba99';

class Brainiac {
  int totalresults;

  Future<List<DataforCard>> getdata(String source) async {
    var gottendata = await http.get(
        'http://newsapi.org/v2/top-headlines?sources=$source&apiKey=065a9f57a03f4ce897dfa1356aa2ba99');

    var gottendatatojson = json.decode(gottendata.body);

    totalresults = gottendatatojson['totalResults'];

    List<DataforCard> newsitems = [];
    // remember name of list is newsitems

    for (int i = 0; i < totalresults; i++) {
      DataforCard user = DataforCard(
          gottendatatojson['articles'][i]['author'],
          gottendatatojson['articles'][i]['title'],
          gottendatatojson['articles'][i]['description'],
          gottendatatojson['articles'][i]['url'],
          gottendatatojson['articles'][i]['urlToImage'],
          gottendatatojson['articles'][i]['publishedAt'],
          gottendatatojson['articles'][i]['content']);

      newsitems.add(user);
    }
    // for (int i = 0; i < totalresults; i++) {
    //   print(newsitems[i].publishedAt);
    // }

    return newsitems;
  }
}

class DataforCard {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  DataforCard(this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);
}
