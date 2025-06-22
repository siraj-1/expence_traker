import 'package:expence_traker/core/app_colors.dart';
import 'package:expence_traker/screens/home/blocs/data.dart';
import 'package:expence_traker/screens/home/widgets/cusotm_home_expensis_header.dart';
import 'package:expence_traker/screens/home/widgets/custom_home_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomHomeHeader()),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(child: CusotmHomeExpensisWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(child: TranscationHomeList())
          ],
        ),
      ),
    );
  }
}

class TranscationHomeList extends StatelessWidget {
  const TranscationHomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transactions",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final tx = transactions[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: tx.color,
                      child: Icon(tx.icon, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tx.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text(tx.date,
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 12)),
                        ],
                      ),
                    ),
                    Text(tx.amount,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
