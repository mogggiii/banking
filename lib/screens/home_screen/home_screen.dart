import 'package:banking/constants/color_constants.dart';
import 'package:banking/screens/home_screen/componenets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(),
      body: HomeScreenBody(),
    );
  }

  AppBar _appBarBuilder() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'My Bank',
        style: TextStyle(
          color: kPrimaryColor,
          fontFamily: 'Poppins',
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage('https://placeimg.com/640/480/people'),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
            size: 27,
          ),
        )
      ],
    );
  }
}