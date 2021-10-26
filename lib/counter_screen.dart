import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title:const Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  if (counter >0){
                    setState(() {
                      --counter;
                    });
                  }

                  },
                child:const Text(
                    'MINUS',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),

                )
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.grey,
                    child: Text(
                      '$counter',
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      counter=0;
                    });
                  },
                  child:const Text(
                    'RESET',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    ++counter;
                  });

                },
                child:const Text(
                    'PLUS',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

