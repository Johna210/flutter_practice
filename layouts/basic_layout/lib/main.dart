import 'package:flutter/material.dart';

import 'package:basic_layout/basic.dart';
import 'package:basic_layout/girds.dart';
import 'package:basic_layout/list_view.dart';
import 'package:basic_layout/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(name: 'assets/images/lake.jpg'),
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              ),
              ButtonSelection(),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
              )
            ],
          ),
        ),
      ),
    );
  }
}






// // final images = Row(
// //   children: [
// //     Expanded(
// //       child: Image.asset('assets/images/pic1.jpg'),
// //     ),
// //     Expanded(
// //       flex: 2,
// //       child: Image.asset('assets/images/pic2.jpg'),
// //     ),
// //     Expanded(
// //       child: Image.asset('assets/images/pic3.jpg'),
// //     ),
// //   ],
// // );

// // final stars = Row(
// //   mainAxisSize: MainAxisSize.min,
// //   children: [
// //     Icon(Icons.star, color: Colors.green[500]),
// //     Icon(Icons.star, color: Colors.green[500]),
// //     Icon(Icons.star, color: Colors.green[500]),
// //     const Icon(Icons.star, color: Colors.black),
// //     const Icon(Icons.star, color: Colors.black)
// //   ],
// // );

// // final ratings = Container(
// //   padding: const EdgeInsets.all(20),
// //   child: Row(
// //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //     children: [
// //       stars,
// //       const Text(
// //         '170 Reviews',
//         style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.w800,
//           fontFamily: 'Roboto',
//           letterSpacing: 0.5,
//           fontSize: 20,
//         ),
//       ),
//     ],
//   ),
// );

// const descTextStyle = TextStyle(
//   color: Colors.black,
//   fontWeight: FontWeight.w800,
//   fontFamily: 'Roboto',
//   letterSpacing: 0.5,
//   fontSize: 18,
//   height: 2,
// );

// final iconList = DefaultTextStyle.merge(
//   style: descTextStyle,
//   child: Container(
//     padding: const EdgeInsets.all(20),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           children: [
//             Icon(Icons.kitchen, color: Colors.green[500]),
//             const Text('PREP:'),
//             const Text('25 min'),
//           ],
//         ),
//         Column(
//           children: [
//             Icon(Icons.timer, color: Colors.green[500]),
//             const Text('COOK:'),
//             const Text('1 hr'),
//           ],
//         ),
//         Column(
//           children: [
//             Icon(Icons.restaurant, color: Colors.green[500]),
//             const Text('FEEDS:'),
//             const Text('4-6'),
//           ],
//         ),
//       ],
//     ),
//   ),
// );

// final leftColumn = Container(
//   padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
//   child: Column(
//     children: [
//       ratings,
//       iconList,
//     ],
//   ),
// );
