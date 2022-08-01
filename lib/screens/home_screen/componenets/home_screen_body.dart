import 'package:banking/model/transaction_model.dart';
import 'package:banking/components/card_widget.dart';
import 'package:banking/constants/app_textstyle.dart';
import 'package:banking/model/card_model.dart';
import 'package:banking/screens/home_screen/componenets/transaction_card.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return CardWidget(card: myCards[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: myCards.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Recent Transactions', style: ApptextStyle.bodyText),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return TransactionCard(transaction: myTransactions[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: myTransactions.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
