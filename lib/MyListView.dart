import 'package:flutter/material.dart';
import 'package:myfont/list.dart';
// import 'package:myfont/StoryList.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

double _widthOfScreen;
double _heightOfScreen;

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    _widthOfScreen = MediaQuery.of(context).size.width;
    _heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _getBuildButton,
    );
  }
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

get _buildBody {
  return Container(
    color: Colors.white70,
    alignment: Alignment.center,
    child: _buildParentListView,
  );
}

get _buildParentListView {
  return ListView(
    children: [
      _buildStoryListView,
      _buildListView,
    ],
  );
}

get _buildListView {
  return Container(
    child: ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return _buildItem(itemList[index]);
      },
    ),
  );
}

_buildItem(Item item) {
  return ListTile(
    title: Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(
        "${item.title}",
        style:
            TextStyle(fontFamily: "Hanuman", color: Colors.black, fontSize: 15),
      ),
    ),
    subtitle: Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(item.img),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          )
        ],
      ),
    ),
  );
}

get _buildStoryListView {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 10, bottom: 10),
    height: 150,
    width: _widthOfScreen,
    child: ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: itemStoryList.length,
      itemBuilder: (context, index) {
        return _buildStoryItem(itemStoryList[index]);
      },
    ),
  );
}

_buildStoryItem(Item item) {
  return Container(
    alignment: Alignment.center,
    child: Container(
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(item.img),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          width: 5,
          color: new Color(0xFFC05BAA),
        ),
      ),
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 5),
    ),
  );
}

get _buildStoryView {
  return Container(
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return _buildStoryItem(itemList[index]);
        }),
  );
}
