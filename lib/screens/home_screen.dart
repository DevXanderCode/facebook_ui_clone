import 'package:facebook_clone_ui/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.white,
            title: const Text(
              'facebook',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
                fontSize: 28.0,
                color: Palette.facebookBlue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
