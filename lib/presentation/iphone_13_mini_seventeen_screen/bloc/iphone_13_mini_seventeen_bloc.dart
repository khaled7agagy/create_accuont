import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_13_mini_seventeen_model.dart';
part 'iphone_13_mini_seventeen_event.dart';
part 'iphone_13_mini_seventeen_state.dart';

/// A bloc that manages the state of a Iphone13MiniSeventeen according to the event that is dispatched to it.
class Iphone13MiniSeventeenBloc
    extends Bloc<Iphone13MiniSeventeenEvent, Iphone13MiniSeventeenState> {
  Iphone13MiniSeventeenBloc(Iphone13MiniSeventeenState initialState)
      : super(initialState) {
    on<Iphone13MiniSeventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniSeventeenInitialEvent event,
    Emitter<Iphone13MiniSeventeenState> emit,
  ) async {}
}
