import 'package:flutter/material.dart';
import 'package:task_ekkelai/global.dart';

class CounterComponent extends StatelessWidget {
  const CounterComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            counter.value++;
          },
          icon: Icon(Icons.add),
        ),
        Text(counter.value.toString()),
        IconButton(
          onPressed: () {
            counter.value--;
          },
          icon: Icon(Icons.remove),
        ),
      ],
    );
  }
}
