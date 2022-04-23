import 'package:facebook_clone_ui/models/models.dart';
import 'package:facebook_clone_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: user.imageUrl),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          user.name,
          style: const TextStyle(fontSize: 16.0),
        )
      ],
    );
  }
}
