import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineComponent extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isCompleted;
  final String text;
  const TimelineComponent(
      {super.key,
      this.isFirst = false,
      this.isLast = false,
      required this.text,
      this.isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: TimelineTile(
        endChild: CardWidget(
          text: text,
          isCompleted: isCompleted,
        ),
        isFirst: isFirst,
        isLast: isLast,
        afterLineStyle: LineStyle(
            color: isCompleted ? Colors.red : const Color(0xfff57960)),
        beforeLineStyle: LineStyle(
            color: isCompleted ? Colors.red : const Color(0xfff57960)),
        indicatorStyle: IndicatorStyle(
            color: isCompleted ? Colors.red : const Color(0xfff57960)),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final bool isCompleted;
  final String text;
  const CardWidget({super.key, this.isCompleted = false, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: 100,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: isCompleted ? Colors.red : const Color(0xfff57960),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
