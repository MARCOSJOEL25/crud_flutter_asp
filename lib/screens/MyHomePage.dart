import 'package:crud_flutter_asp/models/ProductModels.dart';
import 'package:crud_flutter_asp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "CRUD PRODUCTOS",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<product_provider>(context);

    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text(
                    "CRUD",
                    style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              for (Product product in provider.listproduct)
                ToDoItem(product: product)
            ],
          )),
    );
  }
}

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "CREATE",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "UPDATE",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "DELETE",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
// Row rowWithIcos() {
  //   return Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         IconButton(
  //           enableFeedback: false,
  //           onPressed: () {
  //             currentIndex = 0;
  //             setState(() {});
  //           },
  //           icon: currentIndex == 0
  //               ? const Icon(
  //                   Icons.create_rounded,
  //                   color: Colors.white,
  //                   size: 35,
  //                 )
  //               : const Icon(
  //                   Icons.create_outlined,
  //                   color: Colors.white,
  //                   size: 35,
  //                 ),
  //         ),
  //         IconButton(
  //           // enableFeedback: false,
  //           onPressed: () {
  //             currentIndex = 1;
  //             setState(() {});
  //           },
  //           icon: currentIndex == 1
  //               ? const Icon(
  //                   Icons.read_more_rounded,
  //                   color: Colors.white,
  //                   size: 35,
  //                 )
  //               : const Icon(
  //                   Icons.read_more_outlined,
  //                   color: Colors.white,
  //                   size: 35,
  //                 ),
  //         ),
  //         IconButton(
  //           enableFeedback: false,
  //           onPressed: () {
  //             currentIndex = 2;
  //             setState(() {});
  //           },
  //           icon: currentIndex == 2
  //               ? const Icon(
  //                   Icons.update_disabled,
  //                   color: Colors.white,
  //                   size: 35,
  //                 )
  //               : const Icon(
  //                   Icons.update_disabled_outlined,
  //                   color: Colors.white,
  //                   size: 35,
  //                 ),
  //         ),
  //         IconButton(
  //           enableFeedback: false,
  //           onPressed: () {
  //             currentIndex = 3;
  //             setState(() {});
  //           },
  //           icon: currentIndex == 3
  //               ? const Icon(
  //                   Icons.delete_rounded,
  //                   color: Colors.white,
  //                   size: 35,
  //                 )
  //               : const Icon(
  //                   Icons.delete_outline_outlined,
  //                   color: Colors.white,
  //                   size: 35,
  //                 ),
  //         ),
  //       ],
  //     );
  // }  // 

//   BottomNavigationBar bottomNavigationBar() {
//     return BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(
//           label: "C",
//           icon: Icon(Icons.create),
//         ),
//         BottomNavigationBarItem(
//           label: "R",
//           icon: Icon(Icons.read_more),
//         ),
//         BottomNavigationBarItem(
//           label: "U",
//           icon: Icon(Icons.update),
//         ),
//         BottomNavigationBarItem(
//           label: "D",
//           icon: Icon(Icons.delete),
//         ),
//       ],
//     );
//   }
