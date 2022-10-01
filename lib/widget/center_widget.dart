import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kuldii_08_state_management_bloc_dependency_injection/bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocBuilder(
      bloc: BlocProvider.of<MyCounter>(context),
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(fontSize: 50, color: Colors.white),
        );
      },
    ));
  }
}
