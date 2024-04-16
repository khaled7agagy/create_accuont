part of 'iphone_13_mini_fifteen_bloc.dart';

/// Represents the state of Iphone13MiniFifteen in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniFifteenState extends Equatable {
  Iphone13MiniFifteenState(
      {this.bloodtypevalueController, this.iphone13MiniFifteenModelObj});

  TextEditingController? bloodtypevalueController;

  Iphone13MiniFifteenModel? iphone13MiniFifteenModelObj;

  @override
  List<Object?> get props =>
      [bloodtypevalueController, iphone13MiniFifteenModelObj];
  Iphone13MiniFifteenState copyWith({
    TextEditingController? bloodtypevalueController,
    Iphone13MiniFifteenModel? iphone13MiniFifteenModelObj,
  }) {
    return Iphone13MiniFifteenState(
      bloodtypevalueController:
          bloodtypevalueController ?? this.bloodtypevalueController,
      iphone13MiniFifteenModelObj:
          iphone13MiniFifteenModelObj ?? this.iphone13MiniFifteenModelObj,
    );
  }
}
