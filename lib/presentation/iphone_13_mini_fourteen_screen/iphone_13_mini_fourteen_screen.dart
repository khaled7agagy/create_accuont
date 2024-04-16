import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/iphone_13_mini_fourteen_bloc.dart';
import 'models/iphone_13_mini_fourteen_model.dart';

class Iphone13MiniFourteenScreen extends StatelessWidget {
  const Iphone13MiniFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniFourteenBloc>(
      create: (context) => Iphone13MiniFourteenBloc(Iphone13MiniFourteenState(
        iphone13MiniFourteenModelObj: Iphone13MiniFourteenModel(),
      ))
        ..add(Iphone13MiniFourteenInitialEvent()),
      child: Iphone13MiniFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone13MiniFourteenBloc, Iphone13MiniFourteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 1.v,
              ),
              child: Column(
                children: [
                  CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    alignment: Alignment.centerLeft,
                    onTap: () {
                      onTapBtnArrowleftone(context);
                    },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                    ),
                  ),
                  SizedBox(height: 8.v),
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
                        value: 0.26,
                        backgroundColor: appTheme.gray200,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Text(
                    "msg".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 41.v),
                  _buildColumn(context),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                    text: "lbl3".tr,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl2".tr,
            style: theme.textTheme.titleMedium,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
