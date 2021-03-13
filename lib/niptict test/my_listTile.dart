// import 'package:flutter/material.dart';
// import 'package:myfont/models/item.dart';
// import 'package:myfont/models/myitems.dart';
// import 'package:page_transition/page_transition.dart';
// import 'detail_screen.dart';

// class MyListTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(
//         backgroundColor: new Color(0xfff8faf8),
//         elevation: 0.0,
//         centerTitle: true,
//         title: SizedBox(
//           height: 35.0,
//           child: Image.network(
//               "https://thepracticaldev.s3.amazonaws.com/i/9dgus6e6o80pv1gx8y7t.png"),
//         ),
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.camera_alt,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             buildStory(),
//             Divider(),
//             buildListView(items),
//           ],
//         ),
//       ),
//       bottomNavigationBar: _getBuildButton,
//     );
//   }

//   Container buildStory() {
//     return Container(
//       height: 150,
//       alignment: Alignment.topLeft,
//       margin: EdgeInsets.symmetric(vertical: 10),
//       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//       child: ListView.builder(
//         itemCount: itemList.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Container(
//             height: 120,
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(right: 10),
//                   height: 120,
//                   width: 120,
//                   alignment: Alignment.bottomCenter,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.brown, width: 2),
//                     boxShadow: [BoxShadow()],
//                     image: DecorationImage(
//                       image: NetworkImage(itemList[index].img ?? ''),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                         Colors.black.withOpacity(0.3),
//                         BlendMode.darken,
//                       ),
//                     ),
//                   ),
//                   // child: Text(itemList[index].title),
//                 ),
//                 Text(itemList[index].title)
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   get _getBuildButton {
//     return BottomAppBar(
//         color: Colors.black,
//         notchMargin: 4.0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.home),
//               onPressed: () {
//                 print("Press On Home");
//               },
//             ),
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.search),
//               onPressed: () {
//                 print("Press On Search");
//               },
//             ),
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.add_box),
//               onPressed: () {
//                 print("Press On favorite");
//               },
//             ),
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.favorite),
//               onPressed: () {
//                 print("Press On fav");
//               },
//             ),
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.account_box),
//               onPressed: () {
//                 print("Press On Notification");
//               },
//             ),
//           ],
//         ));
//   }

//   ListView buildListView(List<MyItems> items) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: items.length,
//       itemBuilder: (context, index) => ListTile(
//         onTap: () {
//           Navigator.push(
//               context,
//               PageTransition(
//                   type: PageTransitionType.topToBottom,
//                   child: DetailPage(
//                     item: items[index],
//                   )));
//         },
//         subtitle: Container(
//           alignment: Alignment.centerLeft,
//           padding: EdgeInsets.symmetric(horizontal: 15),
//           height: 50,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(10),
//               bottomRight: Radius.circular(10),
//             ),
//           ),
//           child: Text(
//             items[index].title,
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         title: Container(
//           // height: 300,
//           width: double.infinity,
//           height: 300,
//           alignment: Alignment.bottomCenter,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.only(
//                 //bottomLeft: Radius.circular(10),
//                 //  bottomRight: Radius.circular(10),
//                 ),
//             image: DecorationImage(
//               image: NetworkImage(items[index].image),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white60,
//               //borderRadius: BorderRadius.only(
//               // bottomLeft: Radius.circular(10),
//               // bottomRight: Radius.circular(10),
//               // ),
//             ),
//             height: 50,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.favorite_border_outlined,
//                     color: Colors.white,
//                   ),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.comment,
//                     color: Colors.white,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.more_horiz_outlined,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
