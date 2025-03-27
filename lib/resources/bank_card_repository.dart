import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab9/bloc/bank_card_bloc.dart';
import 'package:lab9/model/bank_card.dart';
import 'package:http/http.dart' as http;
import 'package:lab9/rest_client/mobile_api.dart';
import 'package:lab9/rest_client/mobile_api_dio.dart';

class BankCardRepository {
 final _mobileClient = MobileApiClient(MobileApiDio().client);
  Future<void> getBankCard(
      BankCardEvent event, Emitter<BankCardState> emit) async {
    emit(LoadingBankCardState());
    try {

      final getPosts = await _mobileClient.getListData();
        emit(FetchedBankCardState(getPosts));

    } catch (e) {
      emit(FailureBankCardState(e.toString()));
    }
  }

  Future<void> registerBankCard() async {}
  Future<void> removeBankCard() async {}
}
