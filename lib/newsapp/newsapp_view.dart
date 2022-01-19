import 'package:flutter/material.dart';
import 'package:project_uas/components/customListTile.dart';
import 'package:project_uas/model/article_model.dart';
import 'package:project_uas/service/api_service.dart';

class NewsAppOtomotif extends StatefulWidget {
  @override
  _NewsAppOtomotifState createState() => _NewsAppOtomotifState();
}

class _NewsAppOtomotifState extends State<NewsAppOtomotif> {
  ApiServiceOtomotif client = ApiServiceOtomotif();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("News App Otomotif", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue.shade700),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class NewsAppSport extends StatefulWidget {
  @override
  _NewsAppSportState createState() => _NewsAppSportState();
}

class _NewsAppSportState extends State<NewsAppSport> {
  ApiServiceSport client = ApiServiceSport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("News App Sports", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.pink.shade700),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
