import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_13_mini_fifteen_model.dart';
part 'iphone_13_mini_fifteen_event.dart';
part 'iphone_13_mini_fifteen_state.dart';

/// A bloc that manages the state of a Iphone13MiniFifteen according to the event that is dispatched to it.
class Iphone13MiniFifteenBloc
    extends Bloc<Iphone13MiniFifteenEvent, Iphone13MiniFifteenState> {
  Iphone13MiniFifteenBloc(Iphone13MiniFifteenState initialState)
      : super(initialState) {
    on<Iphone13MiniFifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniFifteenInitialEvent event,
    Emitter<Iphone13MiniFifteenState> emit,
  ) async {
    emit(state.copyWith(
      bloodtypevalueController: TextEditingController(),
    ));
  }
}
