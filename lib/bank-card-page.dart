import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab9/bloc/bank_card_bloc.dart';
import 'package:lab9/model/bank_card.dart';

class BankCardPage extends StatefulWidget {
  const BankCardPage({super.key});

  @override
  State<BankCardPage> createState() => _BankCardPageState();
}

class _BankCardPageState extends State<BankCardPage> {
  late BankCardBloc bankCardBloc;
  List<BankCard> bankCards = [];
  @override
  void initState() {
    super.initState();
    bankCardBloc = BankCardBloc();
    bankCardBloc.add(GetBankCardEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
          bloc: bankCardBloc,
          builder: (BuildContext context, state) {
            if (state is LoadingBankCardState) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            }
            if (state is FetchedBankCardState) {
              bankCards = state.bankCard;
              return buildBody();
            } else {
              return Center(
                child: Text("Error"),
              );
            }
          }),
    );
  }

  Widget buildBody() {
    List<Widget> children = [];
    for (var item in bankCards) {
      children.add(Column(children: [
        Text(item.body ?? "Body"),
        Text(item.title ?? "Title"),
      ]));
    }
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
