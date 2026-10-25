import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(transaction.title),
        subtitle: Text(transaction.type),
        trailing: Text(
          'Rp ${transaction.amount.toStringAsFixed(0)}',
        ),
      ),
    );
  }
}