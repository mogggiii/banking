import 'package:banking/constants/app_textstyle.dart';
import 'package:banking/model/card_model.dart';
import 'package:banking/components/card_widget.dart';
import 'package:flutter/material.dart';

class CardsScreenBody extends StatelessWidget {
  const CardsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return CardWidget(card: myCards[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: myCards.length,
            shrinkWrap: true,
          ),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xFF00444F),
          radius: 25,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Add Card',
          style: ApptextStyle.listtileTitle,
        ),
        const SizedBox(
          height: 2,
        )
      ],
    );
  }
}
