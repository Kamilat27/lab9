part of 'bank_card_bloc.dart';

sealed class BankCardEvent {}

final class GetBankCardEvent extends BankCardEvent {}

final class RegisterBankCardEvent extends BankCardEvent {
  // final BankCard bankCard;

  // RegisterBankCardEvent(this.bankCard);
}

final class RemoveBankCardEvent extends BankCardEvent {
  // final BankCard bankCard;

  // RemoveBankCardEvent(this.bankCard);
}
