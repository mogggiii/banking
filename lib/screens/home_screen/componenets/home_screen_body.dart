import 'package:banking/components/card.dart';
import 'package:banking/model/card_model.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 240,
              child: ListView.separated(itemBuilder: (context, index) {
                return CardWidget(card: myCards[index]);
              }, separatorBuilder: (context, index) {
                return SizedBox(width: 10,);
              },
                itemCount: myCards.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}