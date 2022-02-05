import 'package:flutter/material.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.fromBorderSide(
              BorderSide(width: 1, color: _theme.scaffoldBackgroundColor)),
        ),
        child: const Text(
          "What's On Your Mind?",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
