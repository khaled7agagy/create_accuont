part of 'iphone_13_mini_twentyfour_bloc.dart';

/// Represents the state of Iphone13MiniTwentyfour in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniTwentyfourState extends Equatable {
  Iphone13MiniTwentyfourState({this.iphone13MiniTwentyfourModelObj});

  Iphone13MiniTwentyfourModel? iphone13MiniTwentyfourModelObj;

  @override
  List<Object?> get props => [iphone13MiniTwentyfourModelObj];
  Iphone13MiniTwentyfourState copyWith(
      {Iphone13MiniTwentyfourModel? iphone13MiniTwentyfourModelObj}) {
    return Iphone13MiniTwentyfourState(
      iphone13MiniTwentyfourModelObj:
          iphone13MiniTwentyfourModelObj ?? this.iphone13MiniTwentyfourModelObj,
    );
  }
}
