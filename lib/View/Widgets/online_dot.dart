import 'package:facebook_clone/View/Utils/Consts/app_colors.dart';
import 'package:flutter/material.dart';

class OnlineDot extends StatelessWidget {
  final double? size;
  const OnlineDot({Key? key, this.size = 6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return CircleAvatar(
      radius: size,
      backgroundColor: _theme.primaryColor,
      child: CircleAvatar(
        radius: size! - 2,
        backgroundColor: onlineColor,
      ),
    );
  }
}