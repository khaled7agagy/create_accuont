import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/iphone_13_mini_eleven_bloc.dart';
import 'models/iphone_13_mini_eleven_model.dart';

class Iphone13MiniElevenScreen extends StatelessWidget {
  const Iphone13MiniElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniElevenBloc>(
      create: (context) => Iphone13MiniElevenBloc(Iphone13MiniElevenState(
        iphone13MiniElevenModelObj: Iphone13MiniElevenModel(),
      ))
        ..add(Iphone13MiniElevenInitialEvent()),
      child: Iphone13MiniElevenScreen(),
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
            vertical: 10.v,
          ),
          child: Column(
            children: [
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
                    value: 0.13,
                    backgroundColor: appTheme.gray200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 46.v),
              Text(
                "lbl".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 41.v),
              BlocSelector<Iphone13MiniElevenBloc, Iphone13MiniElevenState,
                  TextEditingController?>(
                selector: (state) => state.nameoneController,
                builder: (context, nameoneController) {
                  return CustomTextFormField(
                    controller: nameoneController,
                    hintText: "lbl2".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
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
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 1.v,
          right: 319.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
