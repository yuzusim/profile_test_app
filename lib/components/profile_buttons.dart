import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        // 익명 함수르 넣는다. 함수는 1급객체이기 때문
        print("Follow 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print("Message 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
