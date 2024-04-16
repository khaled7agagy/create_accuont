import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_13_mini_twentyfour_model.dart';
part 'iphone_13_mini_twentyfour_event.dart';
part 'iphone_13_mini_twentyfour_state.dart';

/// A bloc that manages the state of a Iphone13MiniTwentyfour according to the event that is dispatched to it.
class Iphone13MiniTwentyfourBloc
    extends Bloc<Iphone13MiniTwentyfourEvent, Iphone13MiniTwentyfourState> {
  Iphone13MiniTwentyfourBloc(Iphone13MiniTwentyfourState initialState)
      : super(initialState) {
    on<Iphone13MiniTwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone13MiniTwentyfourInitialEvent event,
    Emitter<Iphone13MiniTwentyfourState> emit,
  ) async {}
}
