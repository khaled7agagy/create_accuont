import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/iphone_13_mini_twentyfour_bloc.dart';
import 'models/iphone_13_mini_twentyfour_model.dart'; // ignore_for_file: must_be_immutable

class Iphone13MiniTwentyfourDialog extends StatelessWidget {
  const Iphone13MiniTwentyfourDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniTwentyfourBloc>(
      create: (context) =>
          Iphone13MiniTwentyfourBloc(Iphone13MiniTwentyfourState(
        iphone13MiniTwentyfourModelObj: Iphone13MiniTwentyfourModel(),
      ))
            ..add(Iphone13MiniTwentyfourInitialEvent()),
      child: Iphone13MiniTwentyfourDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 286.h,
          padding: EdgeInsets.symmetric(
            horizontal: 44.h,
            vertical: 42.v,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                width: 197.h,
                child: Text(
                  "msg4".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray60001.copyWith(
                    height: 1.71,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
