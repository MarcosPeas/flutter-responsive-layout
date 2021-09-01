import 'package:flutter/material.dart';
import 'package:flutter_responsivo/widget/custom_card.dart';

class ColOne extends StatefulWidget {
  @override
  _ColOneState createState() => _ColOneState();
}

class _ColOneState extends State<ColOne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 16,
                ),
                ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey,
                    child: Icon(
                      Icons.person,
                      size: 64,
                      color: Colors.white24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Lorem Ipsum Dolor Sit Amet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          CustomCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
                  child: Text(
                    'Hashtags',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Text(
                    '# Valemobi',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Text(
                    '# TradeMap',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Text(
                    '# Flutter',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
