import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab9/model/bank_card.dart';
import 'package:lab9/resources/bank_card_repository.dart';

part 'bank_card_event.dart';
part 'bank_card_state.dart';

class BankCardBloc extends Bloc<BankCardEvent, BankCardState> {
  final _repository = BankCardRepository();
  BankCardBloc() : super(BankCardInitial()) {
    on<BankCardEvent>(_repository.getBankCard);
    // on<RegisterBankCardEvent>(_repository.registerBankCard);
    // on<RemoveBankCardEvent>(_repository.removeBankCard);
  }
}
