import 'package:flutter/material.dart';
import 'package:task_ekkelai/global.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Divider Component')),
          Text('6 / ${counter.value}'),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerRight,
              child: Text(counter.value == 0
                  ? 'Nill'
                  : (6 / counter.value).toStringAsFixed(2))),
        ],
      ),
    );
  }
}
