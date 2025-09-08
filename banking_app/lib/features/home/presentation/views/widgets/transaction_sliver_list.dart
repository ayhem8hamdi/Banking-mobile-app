import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/home/domain/transaction_model.dart';
import 'package:banking_app/features/home/presentation/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionsSliverList extends StatelessWidget {
  const TransactionsSliverList({super.key, this.count});
  final int? count;
  static final List<TransactionModel> list = const [
    TransactionModel(
      transactionTitle: "Apple Store",
      transactionType: "Entertainment",
      transactionPrice: r"- $5,99",
      transactionImage: ImageAssets.appleIcon,
    ),
    TransactionModel(
      transactionTitle: "Money Transfer",
      transactionType: "Transaction",
      transactionPrice: r"- $12,99",
      transactionImage: ImageAssets.moneyTransferIcon,
    ),
    TransactionModel(
      transactionTitle: "Grocery",
      transactionType: "Shopping",
      transactionPrice: r"- $ 88",
      transactionImage: ImageAssets.groceryIcon,
    ),
    TransactionModel(
      transactionTitle: "Apple Store",
      transactionType: "Entertainment",
      transactionPrice: r"- $80",
      transactionImage: ImageAssets.appleIcon,
    ),
    TransactionModel(
      transactionTitle: "Money Transfer",
      transactionType: "Transaction",
      transactionPrice: r"- $10,99",
      transactionImage: ImageAssets.moneyTransferIcon,
    ),
    TransactionModel(
      transactionTitle: "Grocery",
      transactionType: "Shopping",
      transactionPrice: r"- $ 79",
      transactionImage: ImageAssets.groceryIcon,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: TransactionItem(transactionModel: list[index]),
        );
      }, childCount: count ?? list.length),
    );
  }
}
