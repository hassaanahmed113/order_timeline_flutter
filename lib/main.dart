import 'package:flutter/material.dart';
import 'package:order_timeline_flutter/component/timeline_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'Order Timeline',
      ),
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
      backgroundColor: const Color(0xfffbcfc6),
      appBar: AppBar(
        backgroundColor: const Color(0xfffbcfc6),
        title: Text(widget.title),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TimelineComponent(
              isFirst: true,
              isCompleted: true,
              text: 'Order Placed',
            ),
            TimelineComponent(
              isCompleted: true,
              text: 'Preparing',
            ),
            TimelineComponent(
              // isCompleted: true,
              text: 'Dispatched',
            ),
            TimelineComponent(
              // isCompleted: true,
              text: 'Delivered',
              isLast: true,
            )
          ],
        ),
      ),
    );
  }
}
