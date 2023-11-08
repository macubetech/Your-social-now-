import 'bloc/settings_bloc.dart';import 'models/settings_model.dart';import 'package:flutter/material.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/app_bar/appbar_image.dart';import 'package:your_social_now/widgets/app_bar/appbar_title.dart';import 'package:your_social_now/widgets/app_bar/custom_app_bar.dart';import 'package:your_social_now/widgets/custom_switch.dart';import 'package:your_social_now/presentation/logout_modal_bottomsheet/logout_modal_bottomsheet.dart';class SettingsScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SettingsBloc>(create: (context) => SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))..add(SettingsInitialEvent()), child: SettingsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft22(context);}), title: AppbarTitle(text: "lbl_settings".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 20, right: 24, bottom: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapRowuser(context);}, child: Row(children: [CustomImageView(svgPath: ImageConstant.imgUser28x28, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5), child: Text("lbl_manage_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), GestureDetector(onTap: () {onTapRowlock(context);}, child: Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgLock28x28, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5), child: Text("lbl_privacy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))]))), GestureDetector(onTap: () {onTapRowcheckmark(context);}, child: Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgCheckmark1, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5), child: Text("lbl_security".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))]))), GestureDetector(onTap: () {onTapRowqrcode(context);}, child: Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgQrcode28x28, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 2, bottom: 3), child: Text("lbl_qr_code".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))]))), GestureDetector(onTap: () {onTapRowclock(context);}, child: Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgClock2, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5), child: Text("lbl_language".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), Padding(padding: getPadding(top: 5, bottom: 1), child: Text("lbl_english_us".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(left: 20, top: 4, bottom: 4))]))), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgEye, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 2, bottom: 3), child: Text("lbl_dark_mode".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), BlocSelector<SettingsBloc, SettingsState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(margin: getMargin(top: 2, bottom: 2), value: isSelectedSwitch, onChanged: (value) {context.read<SettingsBloc>().add(ChangeSwitchEvent(value: value));});})])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgVideocamera, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 2, bottom: 3), child: Text("msg_content_prefere".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgTicket, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 2, bottom: 3), child: Text("lbl_ads".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgIconlycurvededit, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5, bottom: 1), child: Text("msg_report_a_proble".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgInfo, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5, bottom: 1), child: Text("lbl_help_center".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgCheckmark28x28, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 4, bottom: 1), child: Text("lbl_safety_center".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgUser11, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5, bottom: 1), child: Text("msg_community_guide".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgFile, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 2, bottom: 3), child: Text("msg_terms_of_servic".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))])), GestureDetector(onTap: () {onTapRowwarning(context);}, child: Padding(padding: getPadding(top: 24), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgWarning, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5, bottom: 1), child: Text("lbl_privacy_policy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 4, bottom: 4))]))), GestureDetector(onTap: () {onTapRowrefresh(context);}, child: Padding(padding: getPadding(top: 24, bottom: 5), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgRefresh28x28, height: getSize(28), width: getSize(28)), Padding(padding: getPadding(left: 20, top: 5), child: Text("lbl_logout".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18RedA200.copyWith(letterSpacing: getHorizontalSize(0.2))))])))])))); } 
onTapRowuser(BuildContext context) { NavigatorService.pushNamed(AppRoutes.manageAccountsScreen, ); } 
onTapRowlock(BuildContext context) { NavigatorService.pushNamed(AppRoutes.privacyScreen, ); } 
onTapRowcheckmark(BuildContext context) { NavigatorService.pushNamed(AppRoutes.securityScreen, ); } 
onTapRowqrcode(BuildContext context) { NavigatorService.pushNamed(AppRoutes.qrCodeScreen, ); } 
onTapRowclock(BuildContext context) { NavigatorService.pushNamed(AppRoutes.languageScreen, ); } 
onTapRowwarning(BuildContext context) { NavigatorService.pushNamed(AppRoutes.privacyPolicyScreen, ); } 
onTapRowrefresh(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>LogoutModalBottomsheet.builder(context),isScrollControlled: true); } 
onTapArrowleft22(BuildContext context) { NavigatorService.goBack(); } 
 }
