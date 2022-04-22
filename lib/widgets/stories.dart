import 'package:flutter/material.dart';
import 'package:facebook_clone_ui/models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final Post stories;

  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
