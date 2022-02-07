import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final VoidCallback? onPressed;
  const PostButton({Key? key, this.text, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        style: ButtonStyle(overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]!)),
          onPressed: onPressed,
          icon: icon!,
          label: Text(
            text!,
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          )),
      // child: Material(
      //   color: Colors.transparent,
      //   child: InkWell(
      //     highlightColor: Colors.transparent,
      //     onTap: onPressed,
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Row(
      //         mainAxisSize: MainAxisSize.max,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           icon!,
      //           const SizedBox(
      //             width: 4,
      //           ),
      //           Text(
      //             text!,
      //             style: TextStyle(color: Colors.black.withOpacity(0.5)),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
