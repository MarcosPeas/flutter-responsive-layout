import 'package:flutter/material.dart';
import 'package:flutter_responsivo/widget/col_one.dart';
import 'package:flutter_responsivo/widget/col_three.dart';
import 'package:flutter_responsivo/widget/col_two.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TradeMap'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [
              Condition.largerThan(name: MOBILE),
            ],
            child: SizedBox(width: 220, child: ColOne()),
          ),
          Expanded(child: ColTwo()),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [
              Condition.largerThan(name: TABLET),
            ],
            child: Container(
                width: 220, child: ColThree()),
          ),
        ],
      ),
    );
  }
}
