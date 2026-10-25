import 'package:flutter/material.dart';
import '../models/transaction.dart';

class SummaryScreen extends StatelessWidget {
  final List<Transaction> transactions;

  const SummaryScreen({
    super.key,
    required this.transactions,
  });

  double get totalIncome {
    return transactions
        .where((transaction) => transaction.type == 'Pemasukan')
        .fold(0, (sum, transaction) => sum + transaction.amount);
  }

  double get totalExpense {
    return transactions
        .where((transaction) => transaction.type == 'Pengeluaran')
        .fold(0, (sum, transaction) => sum + transaction.amount);
  }

  double get balance {
    return totalIncome - totalExpense;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ringkasan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('Total Pemasukan'),
                trailing: Text(
                  'Rp ${totalIncome.toStringAsFixed(0)}',
                ),
              ),
            ),

            Card(
              child: ListTile(
                title: const Text('Total Pengeluaran'),
                trailing: Text(
                  'Rp ${totalExpense.toStringAsFixed(0)}',
                ),
              ),
            ),

            Card(
              child: ListTile(
                title: const Text('Saldo'),
                trailing: Text(
                  'Rp ${balance.toStringAsFixed(0)}',
                ),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}