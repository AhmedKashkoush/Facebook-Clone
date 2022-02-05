import 'package:facebook_clone/View/Widgets/post_button.dart';
import 'package:facebook_clone/View/Widgets/post_text_field.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      color: _theme.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                PostTextField(),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostButton(
                  text: 'Live',
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                const VerticalDivider(
                  indent: 4,
                  endIndent: 8,
                ),
                PostButton(
                  text: 'Photo',
                  icon: const Icon(
                    Icons.photo_library_outlined,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                const VerticalDivider(
                  indent: 4,
                  endIndent: 8,
                ),
                PostButton(
                  text: 'Room',
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purple.shade400,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
