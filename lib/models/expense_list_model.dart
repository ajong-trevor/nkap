import './expense_model.dart';

class ExpenseListModel {
  final String date;
  final List<ExpenseModel> expense;

  const ExpenseListModel({
    required this.date,
    required this.expense,
  });
}
