part of 'bank_card_bloc.dart';

sealed class BankCardState {}

final class BankCardInitial extends BankCardState {}

final class LoadingBankCardState extends BankCardState {}

final class FetchedBankCardState extends BankCardState {
  final List<BankCard> bankCard;

  FetchedBankCardState(this.bankCard);
}

final class FailureBankCardState extends BankCardState {
  final String message;

  FailureBankCardState(this.message);
}
