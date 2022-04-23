import 'package:cached_network_image/cached_network_image.dart';
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(post: post),
                const SizedBox(
                  height: 4.0,
                ),
                Text(post.caption),
                post.imageUrl != ''
                    ? const SizedBox.shrink()
                    : const SizedBox(
                        height: 6.0,
                      )
              ],
            ),
          ),
          post.imageUrl != ''
              ? CachedNetworkImage(imageUrl: post.imageUrl)
              : const SizedBox.shrink()
        ],
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
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo} - ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey.shade500,
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () => print('More'),
          icon: const Icon(Icons.more_horiz),
          iconSize: 25.0,
        ),
      ],
    );
  }
}
