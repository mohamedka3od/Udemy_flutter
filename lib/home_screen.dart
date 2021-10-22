import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
        ),
        actions: [
          IconButton(
            onPressed: onNotification,
            icon: const Icon(
              Icons.notification_important,
            ),
          ),
          IconButton(
              onPressed: () {
                print('Hello');
              },
              icon: const Text('hello'),


          ),
        ],
      ),
      body:Column(
        children:  [
           Padding(
             padding: const EdgeInsets.all(50.0),
             child: Container(
               decoration: const BoxDecoration(
                 borderRadius: BorderRadiusDirectional.only(
                   topStart: Radius.circular(20.0),
                   bottomEnd: Radius.circular(20.0),

                 ),
               ),
               clipBehavior:Clip.antiAliasWithSaveLayer,
               child: Stack(
                 alignment: Alignment.bottomCenter,
                 children: [
                   const Image(
                    image:NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg',
                    ),
                     height: 200.0,
                     width: 200.0,
                     fit: BoxFit.cover,

          ),
                   Container(
                     color: Colors.black.withOpacity(.7),
                     width: 200.0,
                     padding: const EdgeInsets.symmetric(
                       vertical: 10,
                     ),
                     // alignment:Alignment.center,
                     child: const Text(
                       'Flower',
                       textAlign: TextAlign.center,
                       style:TextStyle(
                         fontSize: 20.0,
                         // backgroundColor: Colors.black,
                         color: Colors.white,


                       ),

                     ),
                   ),
                 ],
               ),
             ),
           ),
        ],
      ),
      // body: SingleChildScrollView(
      //   scrollDirection:Axis.horizontal,
      //   child: Row(
      //     children : const [
      //       Text(
      //         'First',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'First',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'First',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'First',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Second',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Third',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       Text(
      //         'Fourth',
      //         style: TextStyle(
      //           fontSize: 20.0,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      ///
      // body: Container(
      //   color: Colors.grey,
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Container(
      //         child: const Text(
      //             'First Text',
      //           style:TextStyle(
      //             fontSize: 30.0,
      //             color: Colors.white,
      //           ),
      //         ),
      //         color: Colors.red,
      //       ),
      //       // Container(
      //       //   child: const Text(
      //       //       'Second Text',
      //       //     style:TextStyle(
      //       //       fontSize: 30.0,
      //       //       color: Colors.white,
      //       //     ),
      //       //   ),
      //       //   color: Colors.green,
      //       // ),
      //       // Container(
      //       //   child: const Text(
      //       //       'Third Text',
      //       //     style:TextStyle(
      //       //       fontSize: 30.0,
      //       //       color: Colors.white,
      //       //     ),
      //       //   ),
      //       //   color: Colors.blue,
      //       // ),
      //       // Container(
      //       //   child: const Text(
      //       //       'Fourth Text',
      //       //     style:TextStyle(
      //       //       fontSize: 30.0,
      //       //       color: Colors.white,
      //       //     ),
      //       //   ),
      //       //   color: Colors.amber,
      //       // ),
      //
      //
      //     ],
      //   ),
      //
      // ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }
}
