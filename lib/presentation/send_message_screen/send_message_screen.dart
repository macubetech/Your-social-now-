import 'bloc/send_message_bloc.dart';import 'models/send_message_model.dart';import 'package:flutter/material.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/app_bar/appbar_image.dart';import 'package:your_social_now/widgets/app_bar/appbar_title.dart';import 'package:your_social_now/widgets/app_bar/custom_app_bar.dart';import 'package:your_social_now/widgets/custom_text_form_field.dart';class SendMessageScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SendMessageBloc>(create: (context) => SendMessageBloc(SendMessageState(sendMessageModelObj: SendMessageModel()))..add(SendMessageInitialEvent()), child: SendMessageScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft14(context);}), title: AppbarTitle(text: "lbl_jenny_wilson4".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearchGray900, margin: getMargin(left: 24, top: 10, right: 13)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgCall, margin: getMargin(left: 20, top: 10, right: 13)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, top: 10, right: 37))]), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 28, right: 24, bottom: 28), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse120x1201, height: getSize(120), width: getSize(120), radius: BorderRadius.circular(getHorizontalSize(60))), Padding(padding: getPadding(top: 14), child: Text("lbl_jenny_wilson3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 9), child: Text("msg_actress_singe".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(300), margin: getMargin(left: 80, top: 19), padding: getPadding(left: 20, top: 11, right: 20, bottom: 11), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_hi_jenny_good2".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl7".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left)), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 7), child: Text("lbl_10_01".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: getHorizontalSize(0.2)))))]))), Align(alignment: Alignment.centerRight, child: Container(margin: getMargin(left: 80, top: 10, bottom: 5), padding: getPadding(left: 20, top: 2, right: 20, bottom: 2), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Container(width: getHorizontalSize(220), margin: getMargin(top: 9), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_i_m_your_fan_i2".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl8".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left))), Padding(padding: getPadding(left: 15, top: 51, bottom: 8), child: Text("lbl_10_01".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: getHorizontalSize(0.2))))])))])), bottomNavigationBar: Padding(padding: getPadding(left: 24, right: 24, bottom: 36), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: BlocSelector<SendMessageBloc, SendMessageState, TextEditingController?>(selector: (state) => state.statusDefaultController, builder: (context, statusDefaultController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultController, hintText: "lbl_message".tr, padding: TextFormFieldPadding.PaddingAll19, textInputAction: TextInputAction.done);})), CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontalWhiteA700, height: getSize(56), width: getSize(56), radius: BorderRadius.circular(getHorizontalSize(28)), margin: getMargin(left: 12))])))); } 
onTapArrowleft14(BuildContext context) { NavigatorService.goBack(); } 
 }
