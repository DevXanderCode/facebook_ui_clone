import 'package:facebook_clone_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_ui/models/models.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _PostHeader(post: post),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(post.caption),
            )
          ],
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ProfileAvatar(imageUrl: post.user.imageUrl),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(post.user.name),
            )
          ],
        ),
        IconButton(
          onPressed: () => print('more'),
          icon: const Icon(Icons.more_horiz_rounded),
          iconSize: 25.0,
        ),
      ],
    );
  }
}
