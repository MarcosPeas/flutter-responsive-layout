import 'package:flutter/material.dart';
import 'package:flutter_responsivo/widget/custom_card.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _col01(),
        _col02(),
        _col03(),
      ],
    );
  }

  Widget _col01() {
    return Column(
      children: [
        CustomCard(
          child: Text('Fome'),
        ),
      ],
    );
  }

  Widget _col02() {
    return Column();
  }

  Widget _col03() {
    return Column();
  }
}
