import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int selectedIndex = 0;
  void setIndex(int val) {
    setState(() {
      selectedIndex = val;
    });
  }

  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.red,
      statusBarIconBrightness: Brightness.dark,
    ));

    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ]);

    // String flutterImage =
    //     "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png";
    var image = [
      "https://i.pinimg.com/originals/ce/85/ef/ce85efd957f47dcbcd3adc5d06097c2a.jpg",
      "https://static.zerochan.net/Mizuhara.Chizuru.full.3018903.jpg",
      "https://i.pinimg.com/originals/8d/73/7d/8d737d58c4b1b60cd51081525635331e.jpg",
      "https://static.zerochan.net/Mizuhara.Chizuru.full.3018902.jpg",
      "https://img2.finalfantasyxiv.com/accimg2/81/3b/813be03d2a2a7876084c2e2177f4f69b6d1cc756_400_400.jpg",
      "https://i.redd.it/lmon1q09q7a51.jpg",
    ];
    var loading = "assets/images/loading.gif";

    return SafeArea(
      child: Scaffold(
        key: key,
        drawer: Drawer(

          child: Text("test"),
          
        ),
        appBar: AppBar(
          leading: FlatButton(
            child: Icon(Icons.menu),
            onPressed: () {
              key.currentState.openDrawer();
            },
          ),
          actions: List.generate(
            3,
            (index) {
              List<String> text = ['ថ្មីៗ', 'ល្បី', 'ពេញនិយម'];
              return FlatButton(
                height: kToolbarHeight,
                onPressed: () {},
                child: Text(text[index]),
              );
            },
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/misuhara.jpg",
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: List.generate(
                image.length,
                (index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.topCenter,
                    width: 200,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FadeInImage.assetNetwork(
                        height: 200,
                        width: 200,
                        placeholder: loading,
                        image: image[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -0.1),
                blurRadius: 0.1,
              ),
            ],
          ),
          child: Row(
            children: List.generate(3, (index) {
              List<String> msg = ['Home', 'Account', 'More'];
              List<IconData> btn = [Icons.home, Icons.person, Icons.more_horiz];
              return buildTabBar(msg[index], btn[index]);
            }),
          ),
        ),
      ),
    );
  }

  Expanded buildTabBar(
    String msg,
    IconData icon,
  ) {
    return Expanded(
      child: Tooltip(
        message: msg,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          color: Colors.white,
          height: kToolbarHeight,
          onPressed: () {
            setIndex(1);
          },
          child: Icon(icon),
        ),
      ),
    );
  }
}
