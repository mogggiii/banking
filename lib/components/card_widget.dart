import 'package:banking/constants/app_textstyle.dart';
import 'package:banking/model/card_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final CardModel card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CARD NAME',
                    style: ApptextStyle.myCardTitle,
                  ),
                  Text(
                    card.cardHolderName,
                    style: ApptextStyle.myCardSubtitle,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
                style: ApptextStyle.myCardSubtitle,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'EXP DATE',
                        style: ApptextStyle.myCardTitle,
                      ),
                      Text(
                        card.expDate,
                        style: ApptextStyle.myCardSubtitle,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CVV',
                        style: ApptextStyle.myCardTitle,
                      ),
                      Text(
                        card.cvv,
                        style: ApptextStyle.myCardSubtitle,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: AssetImage('assets/icons/mcard.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
