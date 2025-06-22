import 'package:flutter/material.dart';

class Transaction {
  final IconData icon;
  final Color color;
  final String title;
  final String date;
  final String amount;

  Transaction({
    required this.icon,
    required this.color,
    required this.title,
    required this.date,
    required this.amount,
  });
}

final List<Transaction> transactions = [
  Transaction(
    icon: Icons.fastfood,
    color: Colors.orange,
    title: "Food",
    date: "Today",
    amount: "-\$45.00",
  ),
  Transaction(
    icon: Icons.shopping_bag,
    color: Colors.purple,
    title: "Shopping",
    date: "Today",
    amount: "-\$280.00",
  ),
  Transaction(
    icon: Icons.movie,
    color: Colors.red,
    title: "Entertainment",
    date: "Yesterday",
    amount: "-\$60.00",
  ),
  Transaction(
    icon: Icons.flight,
    color: Colors.teal,
    title: "Travel",
    date: "Yesterday",
    amount: "-\$250.00",
  ),
];
