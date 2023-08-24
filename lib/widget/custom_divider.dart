import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: VerticalDivider(
        color: Colors.black,
        thickness: 2,
      ),);
  }
}
