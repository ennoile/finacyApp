import 'package:flutter/material.dart';

class multiTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback onPressed;

  const multiTextButton({Key? key, required this.children, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
