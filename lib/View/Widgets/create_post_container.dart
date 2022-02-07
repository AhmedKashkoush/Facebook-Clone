import 'package:facebook_clone/View/Widgets/post_button.dart';
import 'package:facebook_clone/View/Widgets/post_text_field.dart';
import 'package:facebook_clone/View/Widgets/profile_avatar.dart';
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
                ProfileAvatar(
                  size: 26,
                ),
                SizedBox(
                  width: 10,
                ),
                PostTextField(),
              ],
            ),
          ),
          const Divider(height: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 36,
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
            ),
          )
        ],
      ),
    );
  }
}
