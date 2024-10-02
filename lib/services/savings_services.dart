import '../models/savings_model.dart';

class SavingsServices {
  List<SavingsModel> savings = [
    SavingsModel(
      amount: '6000',
      numberOfPeriodLeft: '2',
      periodLeft: 'days',
      savingFor: 'New Phone',
    ),
    SavingsModel(
      amount: '1000',
      numberOfPeriodLeft: '1',
      periodLeft: 'month',
      savingFor: 'Savings',
    ),
    SavingsModel(
      amount: '13000',
      numberOfPeriodLeft: '5',
      periodLeft: 'weeks',
      savingFor: 'Buy shoe',
    ),
    SavingsModel(
      amount: '5000',
      numberOfPeriodLeft: '5',
      periodLeft: 'weeks',
      savingFor: 'Savings',
    ),
    SavingsModel(
      amount: '500',
      numberOfPeriodLeft: '7',
      periodLeft: 'days',
      savingFor: 'Njangi',
    ),
  ];
}
