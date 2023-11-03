import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screen/models/transaction.dart';

class TransactionTile extends StatelessWidget {
  TransactionTile({super.key, required this.transaction, this.press});

  Transaction transaction;

  VoidCallback? press;

  TextStyle? titleStyle(BuildContext context, {Color? color}) {
    return Theme.of(context)
        .textTheme
        .bodyLarge
        ?.copyWith(color: color, fontWeight: FontWeight.w500);
  }

  TextStyle? subtitleStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.grey,
        );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text("${transaction.title}",
            style: titleStyle(context, color: Color(0xFF42486E))),
        leading: const CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200/")),
        subtitle: Text("${DateFormat('d MMM yyyy').format(transaction.date)}",
            style: subtitleStyle(context)),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("-\$${transaction.amount}",
                style: titleStyle(context, color: Color(0xff41AFD2))),
            Text("${transaction.category}", style: subtitleStyle(context)),
          ],
        ));
  }
}
