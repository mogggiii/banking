import 'package:banking/constants/app_textstyle.dart';
import 'package:banking/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: transaction.color,
                    ),
                    child: Image(
                      image: AssetImage(transaction.avatar),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.name,
                          style: ApptextStyle.listtileTitle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          transaction.month,
                          style: ApptextStyle.listtileSubtitle,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: ApptextStyle.listtileTitle,
                  ), 
                  Row(
                    children: [
                      transaction.changePercentageIndicator == 'up'
                          ? const Icon(
                              FontAwesomeIcons.turnUp,
                              size: 10,
                              color: Colors.green,
                            )
                          : const Icon(
                              FontAwesomeIcons.turnDown,
                              size: 10,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 5,),
                            Text(transaction.changePercentage, style: ApptextStyle.listtileSubtitle,)
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
