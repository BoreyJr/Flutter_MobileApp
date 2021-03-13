import 'package:flutter/material.dart';
import 'package:myfont/models/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  final Result item;
  DetailPage({this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.login.username),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(item.picture.large))),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        item.name.first + " " + item.name.last,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ]),
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              item.picture.large,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Text('${item.name.first} '),
 
              Text('${item.name.last} '),
       
              Text('${item.email} '),
       
              Text('${item.phone} '),
  
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.paperPlane)
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _getBuildButton,
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
}
