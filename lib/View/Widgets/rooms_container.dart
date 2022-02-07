import 'package:facebook_clone/View/Widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class RoomsContainer extends StatelessWidget {
  const RoomsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 14, left: 12),
      color: _theme.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Audio and video rooms',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue.withOpacity(0.2)),
                  onPressed: () {},
                  child: const Text(
                    'Create Room',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ...List.generate(
                  25,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const ProfileAvatar(
                      isOnline: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
