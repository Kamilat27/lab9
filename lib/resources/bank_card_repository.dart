import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab9/bloc/bank_card_bloc.dart';
import 'package:lab9/model/bank_card.dart';
import 'package:http/http.dart' as http;

class BankCardRepository {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/posts";
  Future<void> getBankCard(
      BankCardEvent event, Emitter<BankCardState> emit) async {
    emit(LoadingBankCardState());
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = jsonDecode(response.body);
        final getBankCard =
            jsonList.map((json) => BankCard.fromJson(json)).toList();
        emit(FetchedBankCardState(getBankCard));
      } else {
        throw Exception("Failed to load bank card");
      }

      // try{
      // String deviceId = await _getDeviceId();
      // final bankCard = await _mobilApiClientWithBasicAndOath.profileInfo(deviceId);
      // emit(FetchedBankCardState(bankCard.bankCard));
      // }
    } catch (e) {
      emit(FailureBankCardState(e.toString()));
    }
  }

  Future<void> registerBankCard() async {}
  Future<void> removeBankCard() async {}
}
