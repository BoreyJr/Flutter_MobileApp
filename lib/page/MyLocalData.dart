import 'package:flutter/material.dart';
import 'package:myfont/models/apiMovie.dart';
import 'package:myfont/repos/MylocalData_repo.dart';

class ReaderPage extends StatefulWidget {
  @override
  _ReaderPageState createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  Future _articleData;
  List<Article> _articleList;

  @override
  void initState() {
    super.initState();
    _articleData = readArticleData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _getBuildButton,
    );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: new Color(0xfff8faf8),
      elevation: 0.0,
      centerTitle: true,
      title: SizedBox(
        height: 35.0,
        child: Image.network(
            "https://thepracticaldev.s3.amazonaws.com/i/9dgus6e6o80pv1gx8y7t.png"),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
      ),
    );
  }

  get _buildBody {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey[200],
      child: _buildFutureReader,
    );
  }

  get _buildFutureReader {
    return FutureBuilder<ArticleModel>(
        future: _articleData,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error: ${snapshot.error}");
            return Text("${snapshot.error}");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            _articleList = snapshot.data.articles;
            return _buildListView;
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  get _buildListView {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          _articleData = readArticleData();
        });
      },
      child: ListView.builder(
          // physics: BouncingScrollPhysics(),
          itemCount: _articleList.length,
          itemBuilder: (context, index) {
            return _buildItem(_articleList[index]);
          }),
    );
  }

  get _getBuildButton {
    return BottomAppBar(
        color: Colors.black,
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.home),
              onPressed: () {
                print("Press On Home");
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.search),
              onPressed: () {
                print("Press On Search");
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add_box),
              onPressed: () {
                print("Press On favorite");
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.favorite),
              onPressed: () {
                print("Press On fav");
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.account_box),
              onPressed: () {
                print("Press On Notification");
              },
            ),
          ],
        ));
  }

  _buildItem(Article article) {
    String _NoImg =
        "https://ansaita.in/optisoft/productimage/no-image-available.jpg";
    article.img = article.img == "" ? _NoImg : article.img;
    return Card(
      child: ListTile(
        leading: Icon(Icons.account_balance_wallet),
        title: Text("${article.title}"),
        subtitle: Container(
          width: 150,
          height: 150,
          child: Image.network(article.img),
        ),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }
}
