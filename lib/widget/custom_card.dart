import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;

  CustomCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: child,
    );
  }
}
