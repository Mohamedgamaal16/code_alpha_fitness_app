import 'package:flutter/material.dart';

class PlusCircleAvatar extends StatelessWidget {
  const PlusCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(radius: 25, backgroundColor: Colors.grey.shade400),
        const Text(
          '+',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
