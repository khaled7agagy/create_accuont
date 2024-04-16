import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/iphone_13_mini_fifteen_bloc.dart';
import 'models/iphone_13_mini_fifteen_model.dart';

class Iphone13MiniFifteenScreen extends StatelessWidget {
  const Iphone13MiniFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniFifteenBloc>(
      create: (context) => Iphone13MiniFifteenBloc(Iphone13MiniFifteenState(
        iphone13MiniFifteenModelObj: Iphone13MiniFifteenModel(),
      ))
        ..add(Iphone13MiniFifteenInitialEvent()),
      child: Iphone13MiniFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl4".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 34.v),
              BlocSelector<Iphone13MiniFifteenBloc, Iphone13MiniFifteenState,
                  TextEditingController?>(
                selector: (state) => state.bloodtypevalueController,
                builder: (context, bloodtypevalueController) {
                  return CustomTextFormField(
                    controller: bloodtypevalueController,
                    hintText: "lbl_b".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                text: "lbl3".tr,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 16.v),
              Text(
                "lbl5".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 63.v,
      centerTitle: true,
      title: Container(
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
            value: 0.54,
            backgroundColor: appTheme.gray200,
            valueColor: AlwaysStoppedAnimation<Color>(
              theme.colorScheme.primary,
            ),
          ),
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
