part of 'iphone_13_mini_eleven_bloc.dart';

/// Represents the state of Iphone13MiniEleven in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniElevenState extends Equatable {
  Iphone13MiniElevenState(
      {this.nameoneController, this.iphone13MiniElevenModelObj});

  TextEditingController? nameoneController;

  Iphone13MiniElevenModel? iphone13MiniElevenModelObj;

  @override
  List<Object?> get props => [nameoneController, iphone13MiniElevenModelObj];
  Iphone13MiniElevenState copyWith({
    TextEditingController? nameoneController,
    Iphone13MiniElevenModel? iphone13MiniElevenModelObj,
  }) {
    return Iphone13MiniElevenState(
      nameoneController: nameoneController ?? this.nameoneController,
      iphone13MiniElevenModelObj:
          iphone13MiniElevenModelObj ?? this.iphone13MiniElevenModelObj,
    );
  }
}
