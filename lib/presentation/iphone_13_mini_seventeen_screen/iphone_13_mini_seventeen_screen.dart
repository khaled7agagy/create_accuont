import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/iphone_13_mini_seventeen_bloc.dart';
import 'models/iphone_13_mini_seventeen_model.dart';

class Iphone13MiniSeventeenScreen extends StatelessWidget {
  const Iphone13MiniSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniSeventeenBloc>(
      create: (context) => Iphone13MiniSeventeenBloc(Iphone13MiniSeventeenState(
        iphone13MiniSeventeenModelObj: Iphone13MiniSeventeenModel(),
      ))
        ..add(Iphone13MiniSeventeenInitialEvent()),
      child: Iphone13MiniSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone13MiniSeventeenBloc, Iphone13MiniSeventeenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: CustomIconButton(
                      height: 28.v,
                      width: 34.h,
                      padding: EdgeInsets.all(7.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowleftone(context);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    height: 7.v,
                    width: 335.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray200,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                      child: LinearProgressIndicator(
                        value: 0.4,
                        backgroundColor: appTheme.gray200,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 63.v),
                  Text(
                    "msg2".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 39.v),
                  _buildColumn20011one(context),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                    text: "lbl3".tr,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                  SizedBox(height: 21.v),
                  Text(
                    "msg3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Spacer(
                    flex: 67,
                  ),
                  Container(
                    height: 80.v,
                    width: 335.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.colorScheme.onPrimary.withOpacity(1),
                          theme.colorScheme.onPrimary.withOpacity(0.7),
                          appTheme.gray3003d
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 32,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumn20011one(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Text(
        "lbl_2001_1_1".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
