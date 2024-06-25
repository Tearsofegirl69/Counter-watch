import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state > 9) {
      showToast();
    } else {
      emit(state + 1);
    }
  }

  void decrement() {
    if (state < -9) {
      showToast();
    } else {
      emit(state - 1);
    }
  }

  void reset() {
    emit(0);
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "Fuera de rango",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Color.fromARGB(255, 255, 197, 36),
        textColor: const Color.fromARGB(255, 0, 0, 0),
        fontSize: 16.0);
  }
}
