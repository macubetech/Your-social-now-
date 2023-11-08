import 'bloc/set_your_fingerprint_bloc.dart';import 'models/set_your_fingerprint_model.dart';import 'package:flutter/material.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/app_bar/appbar_image.dart';import 'package:your_social_now/widgets/app_bar/appbar_title.dart';import 'package:your_social_now/widgets/app_bar/custom_app_bar.dart';import 'package:your_social_now/widgets/custom_button.dart';import 'package:your_social_now/presentation/account_setup_successful_dialog/account_setup_successful_dialog.dart';class SetYourFingerprintScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SetYourFingerprintBloc>(create: (context) => SetYourFingerprintBloc(SetYourFingerprintState(setYourFingerprintModelObj: SetYourFingerprintModel()))..add(SetYourFingerprintInitialEvent()), child: SetYourFingerprintScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SetYourFingerprintBloc, SetYourFingerprintState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft5(context);}), title: AppbarTitle(text: "msg_set_your_finger".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 48, right: 24, bottom: 48), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(323), margin: getMargin(left: 28, top: 48, right: 28), child: Text("msg_add_a_fingerpri".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtUrbanistRegular18.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(193), width: getHorizontalSize(163)), Container(width: getHorizontalSize(324), margin: getMargin(left: 27, top: 130, right: 27), child: Text("msg_please_put_your".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtUrbanistRegular18.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 73), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_skip".tr, margin: getMargin(right: 6), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1, onTap: () {onTapSkip(context);})), Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_continue".tr, margin: getMargin(left: 6), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapContinue(context);}))]))]))));}); } 
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
onTapContinue(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: AccountSetupSuccessfulDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: EdgeInsets.only(left: 0),)); } 
onTapArrowleft5(BuildContext context) { NavigatorService.goBack(); } 
 }
