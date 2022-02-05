import 'package:facebook_clone/View/Utils/Consts/app_colors.dart';
import 'package:facebook_clone/View/Widgets/create_post_container.dart';
import 'package:facebook_clone/View/Widgets/rooms_container.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return RefreshIndicator(
      onRefresh: () async {
        return await Future.delayed(const Duration(seconds: 1));
      },
      backgroundColor: _theme.primaryColor,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: facebookColor,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CreatePostContainer(),
            SizedBox(
              height: 6,
            ),
            RoomsContainer(),
          ],
        ),
      ),
    );
  }
}
