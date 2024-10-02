class ExpenseModel {
  final String item;
  final String amount;
  final String category;
  final String spendingType;
  final String wantNeed;
  final String userId;

  const ExpenseModel({
    required this.category,
    required this.amount,
    required this.item,
    required this.spendingType,
    required this.userId,
    required this.wantNeed,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) => ExpenseModel(
        category: json['category'],
        amount: json['amount'],
        item: json['item'],
        spendingType: json['spendingType'],
        userId: json['userId'],
        wantNeed: json['wantNeed'],
      );
}
