import 'package:flutter/material.dart';

class ProfileAvatar extends StatefulWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvatar({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
  }) : super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
