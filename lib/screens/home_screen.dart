import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_card.dart';
import 'add_transaction_screen.dart';
import 'summary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Transaction> transactions = [
    Transaction(
      title: 'Uang Saku',
      amount: 500000,
      type: 'Pemasukan',
    ),
    Transaction(
      title: 'Makan Siang',
      amount: 20000,
      type: 'Pengeluaran',
    ),
    Transaction(
      title: 'Beli Kopi',
      amount: 15000,
      type: 'Pengeluaran',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeuanganKu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionCard(
                  transaction: transactions[index],
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  final newTransaction =
                      await Navigator.push<Transaction>(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AddTransactionScreen(),
                    ),
                  );

                  if (newTransaction != null) {
                    setState(() {
                      transactions.add(newTransaction);
                    });
                  }
                },
                child: const Text('Tambah Transaksi'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SummaryScreen(
                        transactions: transactions,
                      ),
                    ),
                  );
                },
                child: const Text('Lihat Ringkasan'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}