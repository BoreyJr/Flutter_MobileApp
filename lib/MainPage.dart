import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: __buildAppBar,
      drawer: Drawer(),
      body: _buildBody,
      bottomNavigationBar: _getBuildButton,
    );
  }

  get _buildBody {
    return Container(
      alignment: Alignment.center,
      // color: Colors.white,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://i.ytimg.com/vi/GV3HUDMQ-F8/maxresdefault.jpg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: _buildColumn,
    );
  }

  get __buildAppBar {
    return AppBar(
      backgroundColor: Color(0xFFFFFF),
      // leading: Icon(Icons.menu),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("ចុងក្រោយ", style: TextStyle(fontFamily: "Hanuman")),
          Text("ពេញនិយម", style: TextStyle(fontFamily: "Hanuman")),
          Text("ទាន់សម័យ", style: TextStyle(fontFamily: "Hanuman")),
        ],
      ),
    );
  }

  get _getBuildButton {
    return BottomAppBar(
        color: Colors.lightBlueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Color.fromRGBO(66, 165, 245, 1.0),
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
              icon: Icon(Icons.notifications_outlined),
              onPressed: () {
                print("Press On Notification");
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.mail_outline),
              onPressed: () {
                print("Press On Message");
              },
            ),
          ],
        ));
  }
}

_buildImage(String img) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    width: 250,
    height: 250,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.black,
      image: DecorationImage(
        image: NetworkImage(img),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    ),
  );
}

String _img1 =
    "https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2019/09/01093013/Endgame-Lead-1.jpg";
String _img2 = "https://i.ytimg.com/vi/848q7WLmwbk/maxresdefault.jpg";
String _img3 =
    "https://occ-0-444-448.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABauGRbGybhE9R80G3ZePFsvpVviD6n_aIZ73vJJg_hkkspmMM2lDDFr_XTqQS4V30zL0D-w5D3X_M-P5GTMBVTVZAqc.jpg?r=17f";
String _img4 = "https://i.ytimg.com/vi/AjvdnzWfuDU/maxresdefault.jpg";

get _buildColumn {
  return SingleChildScrollView(
    child: Column(
      children: [
        _buildImage(_img1),
        _buildImage(_img2),
        _buildImage(_img3),
        _buildImage(_img4),
      ],
    ),
  );
}
