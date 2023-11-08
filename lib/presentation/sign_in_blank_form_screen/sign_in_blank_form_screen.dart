import 'bloc/sign_in_blank_form_bloc.dart';import 'models/sign_in_blank_form_model.dart';import 'package:flutter/material.dart';import 'package:your_social_now/core/app_export.dart';import 'package:your_social_now/widgets/custom_button.dart';import 'package:your_social_now/widgets/custom_checkbox.dart';import 'package:your_social_now/widgets/custom_text_form_field.dart';import 'package:your_social_now/domain/googleauth/google_auth_helper.dart';class SignInBlankFormScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SignInBlankFormBloc>(create: (context) => SignInBlankFormBloc(SignInBlankFormState(signInBlankFormModelObj: SignInBlankFormModel()))..add(SignInBlankFormInitialEvent()), child: SignInBlankFormScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 10, right: 23, bottom: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(28), width: getSize(28), margin: getMargin(left: 1), onTap: () {onTapImgArrowleft(context);}), Container(width: getHorizontalSize(288), margin: getMargin(left: 1, top: 79, right: 92), child: Text("msg_login_to_your_a".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold48)), BlocSelector<SignInBlankFormBloc, SignInBlankFormState, TextEditingController?>(selector: (state) => state.statusDefaultController, builder: (context, statusDefaultController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultController, hintText: "lbl_email".tr, margin: getMargin(left: 1, top: 44), padding: TextFormFieldPadding.PaddingT19, textInputType: TextInputType.emailAddress, prefix: Container(margin: getMargin(left: 20, top: 18, right: 12, bottom: 22), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)));}), BlocBuilder<SignInBlankFormBloc, SignInBlankFormState>(builder: (context, state) {return CustomTextFormField(focusNode: FocusNode(), controller: state.statusDefaultOneController, hintText: "lbl_password".tr, margin: getMargin(left: 1, top: 24), textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: getMargin(left: 20, top: 18, right: 12, bottom: 22), child: CustomImageView(svgPath: ImageConstant.imgLock)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)), suffix: InkWell(onTap: () {context.read<SignInBlankFormBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 22), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgDashboard : ImageConstant.imgDashboard))), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)), isObscureText: state.isShowPassword);}), BlocSelector<SignInBlankFormBloc, SignInBlankFormState, bool?>(selector: (state) => state.isCheckbox, builder: (context, isCheckbox) {return CustomCheckbox(text: "lbl_remember_me".tr, iconSize: getHorizontalSize(24), value: isCheckbox, margin: getMargin(left: 1, top: 24), fontStyle: CheckboxFontStyle.UrbanistSemiBold14Gray900, onChange: (value) {context.read<SignInBlankFormBloc>().add(ChangeCheckBoxEvent(value: value));});}), CustomButton(height: getVerticalSize(55), text: "lbl_sign_in".tr, margin: getMargin(left: 1, top: 24), variant: ButtonVariant.FillBluegray100, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16Gray600_1, onTap: () {onTapSignin(context);}), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtForgotthepassword(context);}, child: Padding(padding: getPadding(top: 27), child: Text("msg_forgot_the_pass".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold16.copyWith(letterSpacing: getHorizontalSize(0.2)))))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 11, top: 59, right: 11), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(96), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray200))), Text("msg_or_continue_wit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(96), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray200)))]))), Padding(padding: getPadding(left: 1, top: 31), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray200, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(111), padding: getPadding(left: 43, top: 18, right: 43, bottom: 18), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontal, height: getSize(24), width: getSize(24), alignment: Alignment.center)]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray200, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(111), padding: getPadding(left: 43, top: 18, right: 43, bottom: 18), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgGoogle24x24, height: getSize(24), width: getSize(24), alignment: Alignment.center, onTap: () {onTapImgGoogle(context);})]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray200, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(111), padding: getPadding(left: 43, top: 18, right: 43, bottom: 18), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgUser24x24, height: getSize(24), width: getSize(24), alignment: Alignment.center)])))])), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 46, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(bottom: 1), child: Text("msg_don_t_have_an_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14.copyWith(letterSpacing: getHorizontalSize(0.2)))), GestureDetector(onTap: () {onTapTxtSignup(context);}, child: Padding(padding: getPadding(left: 8, top: 1), child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14.copyWith(letterSpacing: getHorizontalSize(0.2)))))])))])))); } 
onTapImgArrowleft(BuildContext context) { NavigatorService.goBack(); } 
onTapSignin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chooseYourInterestScreen, ); } 
onTapTxtForgotthepassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordMethodsScreen, ); } 
onTapImgGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
onTapTxtSignup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpBlankFormScreen, ); } 
 }
