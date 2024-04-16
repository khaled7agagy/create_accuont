part of 'iphone_13_mini_seventeen_bloc.dart';

/// Represents the state of Iphone13MiniSeventeen in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniSeventeenState extends Equatable {
  Iphone13MiniSeventeenState({this.iphone13MiniSeventeenModelObj});

  Iphone13MiniSeventeenModel? iphone13MiniSeventeenModelObj;

  @override
  List<Object?> get props => [iphone13MiniSeventeenModelObj];
  Iphone13MiniSeventeenState copyWith(
      {Iphone13MiniSeventeenModel? iphone13MiniSeventeenModelObj}) {
    return Iphone13MiniSeventeenState(
      iphone13MiniSeventeenModelObj:
          iphone13MiniSeventeenModelObj ?? this.iphone13MiniSeventeenModelObj,
    );
  }
}
