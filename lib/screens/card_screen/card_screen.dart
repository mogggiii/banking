import 'package:banking/constants/color_constants.dart';
import 'package:banking/screens/card_screen/components/cards_screen_body.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(),
      body: const CardsScreenBody(),
    );
  }
}

AppBar _appBarBuilder() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'My Cards',
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
