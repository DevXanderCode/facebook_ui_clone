import 'package:facebook_clone_ui/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_ui/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 4.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            return Container(
              margin: const EdgeInsets.all(2.0),
              height: 20.0,
              width: 20.0,
              color: Colors.red,
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatefulWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  State<_CreateRoomButton> createState() => __CreateRoomButtonState();
}

class __CreateRoomButtonState extends State<_CreateRoomButton> {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create Room'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent.shade100,
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: const Icon(
              Icons.video_call,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          const Text('Create\nRoom'),
        ],
      ),
    );
  }
}
