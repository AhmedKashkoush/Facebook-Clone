import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Widget? icon;
  final VoidCallback? onPressed;
  const CircleButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        splashRadius: 20,
        highlightColor: Colors.transparent,
        icon: icon!,
      ),
    );
  }
}

          // shape: BoxShape.circle,
          // color: Colors.grey.withOpacity(0.1),
