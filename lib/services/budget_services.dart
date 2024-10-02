import '../models/budget_model.dart';

class BudgetServices {
  final List<BudgetModel> budgets = [
    BudgetModel(
      amount: '10000',
      date: '03/01/2024',
      month: 'January',
      paymentOption: 'MTN MoMo',
    ),
    BudgetModel(
      amount: '35000',
      date: '10/02/2024',
      month: 'Febuary',
      paymentOption: 'Orange Money',
    ),
    BudgetModel(
      amount: '5000',
      date: '01/03/2024',
      month: 'March',
      paymentOption: 'MTN MoMo',
    ),
    BudgetModel(
      amount: '15000',
      date: '07/04/2024',
      month: 'April',
      paymentOption: 'Orange Money',
    ),
    BudgetModel(
      amount: '7500',
      date: '012/05/2024',
      month: 'May',
      paymentOption: 'MTN MoMo',
    ),
    BudgetModel(
      amount: '12000',
      date: '02/06/2024',
      month: 'June',
      paymentOption: 'MTN MoMo',
    ),
  ];
}
