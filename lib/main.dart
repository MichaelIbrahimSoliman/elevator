import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elevator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Elevator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Padding(
          padding: .all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(height: 70, width: 70, color: Colors.lightBlue),
                  Icon(Icons.arrow_drop_up, size: 40, color: Colors.white),
                  Text('3',style: TextStyle(fontSize: 30, color: Colors.white)),
                  Text('Door: Closed'),
                ],
              ),

              // Repeat Column 3 times
              // for (int i = 0; i < 3; i++)
              //   Column(
              //    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const SizedBox(height: 10),

              //       // Repeat Rows 3 times
              //       for (int j = 0; j < 3; j++) ...[
              //         Container(height: 30, width: 30, color: Colors.teal),
              //         if (j <= 3) const SizedBox(height: 20),
              //       ],
              //     ],
              //   ),
            //  for (int i = 0; i < 3; i++)
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //      // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //       const SizedBox(height: 10),
            //       Container(height: 30, width: 30, color: Colors.teal),

            //         // Repeat Rows 3 times
            //         for (int j = 0; j < 3; j++) ...[
            //           Container(height: 30, width: 30, color: Colors.teal),
            //           if (j <= 3) const SizedBox(height: 1),
            //       ],
            //       ],
            //     ),
             const SizedBox(height: 80),
             Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    for (int i = 0; i < 3; i++) ...[
                      Column(
                        children: [

                          // Repeat Containers 3 times
                          for (int j = 0; j < 3; j++) ...[
                            Container(
                              height: 30,
                              width: 30,
                              color: Colors.teal,
                            ),

                            const SizedBox(height: 1),
                          ],

                        ],
                      ),
                    ],
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}