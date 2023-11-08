import 'bloc/create_new_pin_bloc.dart';import 'models/create_new_pin_model.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';import 'package:pin_code_fields/pin_code_fields.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/app_bar/appbar_image.dart';import 'package:your_social_now/widgets/app_bar/appbar_title.dart';import 'package:your_social_now/widgets/app_bar/custom_app_bar.dart';import 'package:your_social_now/widgets/custom_button.dart';class CreateNewPinScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<CreateNewPinBloc>(create: (context) => CreateNewPinBloc(CreateNewPinState(createNewPinModelObj: CreateNewPinModel()))..add(CreateNewPinInitialEvent()), child: CreateNewPinScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(49), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 11), onTap: () {onTapArrowleft4(context);}), title: AppbarTitle(text: "lbl_create_new_pin".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 139, right: 23), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(331), margin: getMargin(left: 25, right: 25), child: Text("msg_add_a_pin_numbe".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtUrbanistRegular18.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 80), child: BlocSelector<CreateNewPinBloc, CreateNewPinState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return PinCodeTextField(appContext: context, controller: otpController, length: 4, obscureText: false, obscuringCharacter: '*', keyboardType: TextInputType.number, autoDismissKeyboard: true, enableActiveFill: true, inputFormatters: [FilteringTextInputFormatter.digitsOnly], onChanged: (value) {otpController?.text = value;}, textStyle: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(24), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), pinTheme: PinTheme(fieldHeight: getHorizontalSize(61), fieldWidth: getHorizontalSize(78), shape: PinCodeFieldShape.box, borderRadius: BorderRadius.circular(getHorizontalSize(12)), selectedFillColor: ColorConstant.whiteA700, activeFillColor: ColorConstant.whiteA700, inactiveFillColor: ColorConstant.whiteA700, inactiveColor: ColorConstant.gray900, selectedColor: ColorConstant.gray900, activeColor: ColorConstant.gray900));})), Spacer(), CustomButton(height: getVerticalSize(58), text: "lbl_continue".tr, margin: getMargin(bottom: 190), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapContinue(context);})])))); } 
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setYourFingerprintScreen, ); } 
onTapArrowleft4(BuildContext context) { NavigatorService.goBack(); } 
 }
