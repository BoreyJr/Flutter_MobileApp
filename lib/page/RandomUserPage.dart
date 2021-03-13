// import 'package:flutter/material.dart';
// import 'package:myfont/models/api.dart';
// import 'package:myfont/models/apiMovie.dart';
// import 'package:myfont/page/detail_screen.dart';
// import 'package:myfont/repos/MylocalData_repo.dart';
// import 'package:myfont/repos/RandomUser_Repo.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// class RandomUserPage extends StatefulWidget {
//   @override
//   _RandomUserPageState createState() => _RandomUserPageState();
// }

// class _RandomUserPageState extends State<RandomUserPage> {
//   Future<RandomUser> _data;
//   List<Result> _results;

//   @override
//   void initState() {
//     _data = readData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar,
//       body: _buildBody,
//       bottomNavigationBar: _getBuildButton,
//     );
//   }

//   get _buildBody {
//     return Container(
//       child: FutureBuilder<ArticleData>(
//         future: getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             print("Snapphot.error:  ${snapshot.error}");
//             return Text("Error while reading data ");
//           }
//           if (snapshot.hasData) {
//             return _buildListView(snapshot.data.articles);
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }

//   _buildListView(List<Article> resultList) {
//     return ListView.builder(
//         physics: BouncingScrollPhysics(),
//         itemCount: resultList.length,
//         itemBuilder: (context, index) {
//           return _buildItem(resultList[index]);
//         });
//   }

//   _buildItem(Article item) {
//     return Card(
//       child: ListTile(
//         leading: Icon(Icons.account_balance_wallet),
//         title: Text("${item.title}"),
//         subtitle: Text(item.body),
//       ),
//     );
//   }
// }

// get _buildAppBar {
//   return AppBar(
//     backgroundColor: new Color(0xfff8faf8),
//     elevation: 0.0,
//     centerTitle: true,
//     title: SizedBox(
//       height: 35.0,
//       child: Image.network(
//           "https://thepracticaldev.s3.amazonaws.com/i/9dgus6e6o80pv1gx8y7t.png"),
//     ),
//     leading: IconButton(
//       onPressed: () {},
//       icon: Icon(
//         Icons.camera_alt,
//         color: Colors.black,
//       ),
//     ),
//   );
// }

// get _getBuildButton {
//   return BottomAppBar(
//       color: Colors.black,
//       notchMargin: 4.0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             color: Colors.white,
//             icon: Icon(Icons.home),
//             onPressed: () {
//               print("Press On Home");
//             },
//           ),
//           IconButton(
//             color: Colors.white,
//             icon: Icon(Icons.search),
//             onPressed: () {
//               print("Press On Search");
//             },
//           ),
//           IconButton(
//             color: Colors.white,
//             icon: Icon(Icons.add_box),
//             onPressed: () {
//               print("Press On favorite");
//             },
//           ),
//           IconButton(
//             color: Colors.white,
//             icon: Icon(Icons.favorite),
//             onPressed: () {
//               print("Press On fav");
//             },
//           ),
//           IconButton(
//             color: Colors.white,
//             icon: Icon(Icons.account_box),
//             onPressed: () {
//               print("Press On Notification");
//             },
//           ),
//         ],
//       ));
// }
