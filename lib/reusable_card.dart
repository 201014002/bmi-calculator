import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.wcolor, this.cardChild});
  final Color wcolor;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: wcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}