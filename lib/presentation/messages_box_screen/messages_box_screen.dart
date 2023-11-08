import 'bloc/messages_box_bloc.dart';import 'models/messages_box_model.dart';import 'package:flutter/material.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/app_bar/appbar_image.dart';import 'package:your_social_now/widgets/app_bar/appbar_title.dart';import 'package:your_social_now/widgets/app_bar/custom_app_bar.dart';import 'package:your_social_now/widgets/custom_button.dart';import 'package:your_social_now/widgets/custom_text_form_field.dart';class MessagesBoxScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<MessagesBoxBloc>(create: (context) => MessagesBoxBloc(MessagesBoxState(messagesBoxModelObj: MessagesBoxModel()))..add(MessagesBoxInitialEvent()), child: MessagesBoxScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft18(context);}), title: AppbarTitle(text: "lbl_theresa_varnes".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgCall28x28, margin: getMargin(left: 24, top: 10, right: 10)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, top: 10, right: 34))]), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 23, right: 24, bottom: 23), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(24), width: getHorizontalSize(75), text: "lbl_today".tr, variant: ButtonVariant.FillGray6001e, fontStyle: ButtonFontStyle.UrbanistSemiBold10Gray600, alignment: Alignment.center), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(300), margin: getMargin(left: 80, top: 24), padding: getPadding(left: 20, top: 11, right: 20, bottom: 11), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Text("msg_hi_theresa_goo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 7), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: getHorizontalSize(0.2)))))]))), Align(alignment: Alignment.centerRight, child: Container(margin: getMargin(left: 80, top: 10), padding: getPadding(left: 20, top: 9, right: 20, bottom: 9), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Container(width: getHorizontalSize(213), margin: getMargin(top: 4), child: Text("msg_how_are_you_tod".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))))), Padding(padding: getPadding(left: 18, top: 54, bottom: 2), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: getHorizontalSize(0.2))))]))), Container(width: getHorizontalSize(300), margin: getMargin(top: 24, right: 80), padding: getPadding(left: 20, top: 11, right: 20, bottom: 11), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3), child: Text("msg_hi_morning_too".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 6), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: getHorizontalSize(0.2)))))])), Container(margin: getMargin(top: 10, right: 80), padding: getPadding(left: 20, top: 9, right: 20, bottom: 9), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Container(width: getHorizontalSize(202), margin: getMargin(top: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_yes_you_re_righ2".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl9".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left))), Padding(padding: getPadding(left: 29, top: 55, bottom: 2), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Spacer(), Padding(padding: getPadding(bottom: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [BlocSelector<MessagesBoxBloc, MessagesBoxState, TextEditingController?>(selector: (state) => state.frameController, builder: (context, frameController) {return CustomTextFormField(width: getHorizontalSize(312), focusNode: FocusNode(), controller: frameController, hintText: "lbl_message".tr, textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(left: 20, top: 18, right: 12, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgCategoriesstickerComponentadditionalIcons)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), suffix: Container(margin: getMargin(left: 30, top: 18, right: 17, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgCamera20x20)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)));}), CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontalWhiteA70056x56, height: getSize(56), width: getSize(56), radius: BorderRadius.circular(getHorizontalSize(28)))]))])))); } 
onTapArrowleft18(BuildContext context) { NavigatorService.goBack(); } 
 }
