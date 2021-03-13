// import 'package:flutter/material.dart';
// import 'package:myfont/models/api.dart';
// import 'package:myfont/models/myitems.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class DetailPage extends StatelessWidget {
//   final Result item;
//   DetailPage({this.item});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Container(
//                       height: 40.0,
//                       width: 40.0,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                               fit: BoxFit.fill,
//                               image: new NetworkImage(item.picture.large))),
//                     ),
//                     SizedBox(width: 10.0),
//                     Text(
//                       "The Verge",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.more_vert),
//                   onPressed: () {},
//                 )
//               ]),
//         ),
//         Container(
//           child: Image.network(
//             item.picture.large,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     icon: Icon(Icons.favorite_border),
//                   ),
//                   SizedBox(width: 16.0),
//                   Icon(FontAwesomeIcons.comment),
//                   SizedBox(width: 16.0),
//                   Icon(FontAwesomeIcons.paperPlane)
//                 ],
//               ),
//               Icon(FontAwesomeIcons.bookmark)
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
