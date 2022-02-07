import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/View/Utils/Consts/app_colors.dart';
import 'package:facebook_clone/View/Widgets/online_dot.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  final bool? isOnline;
  final String? image;
  const ProfileAvatar(
      {Key? key, this.size = 18, this.isOnline = false, this.image = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Object imageAvatar = image != null && image != ''
    //     ? CachedNetworkImageProvider(image!)
    //     : AssetImage('assets/images/facebook user.jpg');
    return Stack(
      children: [
        CircleAvatar(
          radius: size,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: const AssetImage('assets/images/facebook user.jpg'),
          foregroundImage: CachedNetworkImageProvider(image!,),
        ),
        if (isOnline!)
          const Positioned(
            child: OnlineDot(),
            bottom: 0,
            right: 0,
          )
      ],
    );
  }
}
