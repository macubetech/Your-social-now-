import 'package:flutter/material.dart';
import 'package:your_social_now/presentation/splash_screen/splash_screen.dart';
import 'package:your_social_now/presentation/walkthrough_one_screen/walkthrough_one_screen.dart';
import 'package:your_social_now/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';
import 'package:your_social_now/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:your_social_now/presentation/lets_in_screen/lets_in_screen.dart';
import 'package:your_social_now/presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';
import 'package:your_social_now/presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import 'package:your_social_now/presentation/choose_your_interest_screen/choose_your_interest_screen.dart';
import 'package:your_social_now/presentation/tell_us_about_yourself_screen/tell_us_about_yourself_screen.dart';
import 'package:your_social_now/presentation/when_is_your_birthday_screen/when_is_your_birthday_screen.dart';
import 'package:your_social_now/presentation/fill_your_profile_blank_form_screen/fill_your_profile_blank_form_screen.dart';
import 'package:your_social_now/presentation/create_new_pin_screen/create_new_pin_screen.dart';
import 'package:your_social_now/presentation/set_your_fingerprint_screen/set_your_fingerprint_screen.dart';
import 'package:your_social_now/presentation/forgot_password_methods_screen/forgot_password_methods_screen.dart';
import 'package:your_social_now/presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'package:your_social_now/presentation/forgot_password_filled_otp_screen/forgot_password_filled_otp_screen.dart';
import 'package:your_social_now/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:your_social_now/presentation/home_container_screen/home_container_screen.dart';
import 'package:your_social_now/presentation/report_screen/report_screen.dart';
import 'package:your_social_now/presentation/sound_used_screen/sound_used_screen.dart';
import 'package:your_social_now/presentation/profile_screen/profile_screen.dart';
import 'package:your_social_now/presentation/followers_tab_container_screen/followers_tab_container_screen.dart';
import 'package:your_social_now/presentation/send_message_screen/send_message_screen.dart';
import 'package:your_social_now/presentation/search_type_keyword_screen/search_type_keyword_screen.dart';
import 'package:your_social_now/presentation/search_results_users_tab_container_screen/search_results_users_tab_container_screen.dart';
import 'package:your_social_now/presentation/see_live_screen/see_live_screen.dart';
import 'package:your_social_now/presentation/weekly_ranking_tab_container_screen/weekly_ranking_tab_container_screen.dart';
import 'package:your_social_now/presentation/trending_sounds_details_screen/trending_sounds_details_screen.dart';
import 'package:your_social_now/presentation/trending_hashtag_details_screen/trending_hashtag_details_screen.dart';
import 'package:your_social_now/presentation/posts_quick_photo_screen/posts_quick_photo_screen.dart';
import 'package:your_social_now/presentation/posts_quick_video_screen/posts_quick_video_screen.dart';
import 'package:your_social_now/presentation/posts_camera_screen/posts_camera_screen.dart';
import 'package:your_social_now/presentation/posts_templates_screen/posts_templates_screen.dart';
import 'package:your_social_now/presentation/posts_add_sounds_tab_container_screen/posts_add_sounds_tab_container_screen.dart';
import 'package:your_social_now/presentation/posts_upload_media_tab_container_screen/posts_upload_media_tab_container_screen.dart';
import 'package:your_social_now/presentation/posts_edit_page_screen/posts_edit_page_screen.dart';
import 'package:your_social_now/presentation/go_live_screen/go_live_screen.dart';
import 'package:your_social_now/presentation/all_activity_dropdown_screen/all_activity_dropdown_screen.dart';
import 'package:your_social_now/presentation/messages_screen/messages_screen.dart';
import 'package:your_social_now/presentation/messages_box_screen/messages_box_screen.dart';
import 'package:your_social_now/presentation/type_message_screen/type_message_screen.dart';
import 'package:your_social_now/presentation/call_screen/call_screen.dart';
import 'package:your_social_now/presentation/find_friends_screen/find_friends_screen.dart';
import 'package:your_social_now/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:your_social_now/presentation/settings_screen/settings_screen.dart';
import 'package:your_social_now/presentation/manage_accounts_screen/manage_accounts_screen.dart';
import 'package:your_social_now/presentation/privacy_screen/privacy_screen.dart';
import 'package:your_social_now/presentation/security_screen/security_screen.dart';
import 'package:your_social_now/presentation/qr_code_screen/qr_code_screen.dart';
import 'package:your_social_now/presentation/language_screen/language_screen.dart';
import 'package:your_social_now/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:your_social_now/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String walkthroughOneScreen = '/walkthrough_one_screen';

  static const String walkthroughTwoScreen = '/walkthrough_two_screen';

  static const String walkthroughThreeScreen = '/walkthrough_three_screen';

  static const String letsInScreen = '/lets_in_screen';

  static const String signUpBlankFormScreen = '/sign_up_blank_form_screen';

  static const String signInBlankFormScreen = '/sign_in_blank_form_screen';

  static const String chooseYourInterestScreen = '/choose_your_interest_screen';

  static const String tellUsAboutYourselfScreen =
      '/tell_us_about_yourself_screen';

  static const String whenIsYourBirthdayScreen =
      '/when_is_your_birthday_screen';

  static const String fillYourProfileBlankFormScreen =
      '/fill_your_profile_blank_form_screen';

  static const String createNewPinScreen = '/create_new_pin_screen';

  static const String setYourFingerprintScreen = '/set_your_fingerprint_screen';

  static const String forgotPasswordMethodsScreen =
      '/forgot_password_methods_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledOtpScreen =
      '/forgot_password_filled_otp_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String reportScreen = '/report_screen';

  static const String soundUsedScreen = '/sound_used_screen';

  static const String profileScreen = '/profile_screen';

  static const String followersPage = '/followers_page';

  static const String followersTabContainerScreen =
      '/followers_tab_container_screen';

  static const String suggestedPage = '/suggested_page';

  static const String sendMessageScreen = '/send_message_screen';

  static const String searchTypeKeywordScreen = '/search_type_keyword_screen';

  static const String searchResultsTopPage = '/search_results_top_page';

  static const String searchResultsUsersPage = '/search_results_users_page';

  static const String searchResultsUsersTabContainerScreen =
      '/search_results_users_tab_container_screen';

  static const String searchResultsVideosPage = '/search_results_videos_page';

  static const String searchResultsSoundsPage = '/search_results_sounds_page';

  static const String seeLiveScreen = '/see_live_screen';

  static const String weeklyRankingPage = '/weekly_ranking_page';

  static const String weeklyRankingTabContainerScreen =
      '/weekly_ranking_tab_container_screen';

  static const String risingStarsPage = '/rising_stars_page';

  static const String trendingSoundsPage = '/trending_sounds_page';

  static const String trendingSoundsTabContainerPage =
      '/trending_sounds_tab_container_page';

  static const String trendingSoundsDetailsScreen =
      '/trending_sounds_details_screen';

  static const String trendingHashtagPage = '/trending_hashtag_page';

  static const String trendingHashtagDetailsScreen =
      '/trending_hashtag_details_screen';

  static const String postsQuickPhotoScreen = '/posts_quick_photo_screen';

  static const String postsQuickVideoScreen = '/posts_quick_video_screen';

  static const String postsCameraScreen = '/posts_camera_screen';

  static const String postsTemplatesScreen = '/posts_templates_screen';

  static const String postsAddSoundsPage = '/posts_add_sounds_page';

  static const String postsAddSoundsTabContainerScreen =
      '/posts_add_sounds_tab_container_screen';

  static const String postsUploadMediaPage = '/posts_upload_media_page';

  static const String postsUploadMediaTabContainerScreen =
      '/posts_upload_media_tab_container_screen';

  static const String postsEditPageScreen = '/posts_edit_page_screen';

  static const String goLiveScreen = '/go_live_screen';

  static const String allActivityPage = '/all_activity_page';

  static const String allActivityDropdownScreen =
      '/all_activity_dropdown_screen';

  static const String messagesScreen = '/messages_screen';

  static const String messagesBoxScreen = '/messages_box_screen';

  static const String typeMessageScreen = '/type_message_screen';

  static const String callScreen = '/call_screen';

  static const String profileTwoPage = '/profile_two_page';

  static const String findFriendsScreen = '/find_friends_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String manageAccountsScreen = '/manage_accounts_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String securityScreen = '/security_screen';

  static const String qrCodeScreen = '/qr_code_screen';

  static const String languageScreen = '/language_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        walkthroughOneScreen: WalkthroughOneScreen.builder,
        walkthroughTwoScreen: WalkthroughTwoScreen.builder,
        walkthroughThreeScreen: WalkthroughThreeScreen.builder,
        letsInScreen: LetsInScreen.builder,
        signUpBlankFormScreen: SignUpBlankFormScreen.builder,
        signInBlankFormScreen: SignInBlankFormScreen.builder,
        chooseYourInterestScreen: ChooseYourInterestScreen.builder,
        tellUsAboutYourselfScreen: TellUsAboutYourselfScreen.builder,
        whenIsYourBirthdayScreen: WhenIsYourBirthdayScreen.builder,
        fillYourProfileBlankFormScreen: FillYourProfileBlankFormScreen.builder,
        createNewPinScreen: CreateNewPinScreen.builder,
        setYourFingerprintScreen: SetYourFingerprintScreen.builder,
        forgotPasswordMethodsScreen: ForgotPasswordMethodsScreen.builder,
        forgotPasswordTypeOtpScreen: ForgotPasswordTypeOtpScreen.builder,
        forgotPasswordFilledOtpScreen: ForgotPasswordFilledOtpScreen.builder,
        createNewPasswordScreen: CreateNewPasswordScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        reportScreen: ReportScreen.builder,
        soundUsedScreen: SoundUsedScreen.builder,
        profileScreen: ProfileScreen.builder,
        followersTabContainerScreen: FollowersTabContainerScreen.builder,
        sendMessageScreen: SendMessageScreen.builder,
        searchTypeKeywordScreen: SearchTypeKeywordScreen.builder,
        searchResultsUsersTabContainerScreen:
            SearchResultsUsersTabContainerScreen.builder,
        seeLiveScreen: SeeLiveScreen.builder,
        weeklyRankingTabContainerScreen:
            WeeklyRankingTabContainerScreen.builder,
        trendingSoundsDetailsScreen: TrendingSoundsDetailsScreen.builder,
        trendingHashtagDetailsScreen: TrendingHashtagDetailsScreen.builder,
        postsQuickPhotoScreen: PostsQuickPhotoScreen.builder,
        postsQuickVideoScreen: PostsQuickVideoScreen.builder,
        postsCameraScreen: PostsCameraScreen.builder,
        postsTemplatesScreen: PostsTemplatesScreen.builder,
        postsAddSoundsTabContainerScreen:
            PostsAddSoundsTabContainerScreen.builder,
        postsUploadMediaTabContainerScreen:
            PostsUploadMediaTabContainerScreen.builder,
        postsEditPageScreen: PostsEditPageScreen.builder,
        goLiveScreen: GoLiveScreen.builder,
        allActivityDropdownScreen: AllActivityDropdownScreen.builder,
        messagesScreen: MessagesScreen.builder,
        messagesBoxScreen: MessagesBoxScreen.builder,
        typeMessageScreen: TypeMessageScreen.builder,
        callScreen: CallScreen.builder,
        findFriendsScreen: FindFriendsScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        settingsScreen: SettingsScreen.builder,
        manageAccountsScreen: ManageAccountsScreen.builder,
        privacyScreen: PrivacyScreen.builder,
        securityScreen: SecurityScreen.builder,
        qrCodeScreen: QrCodeScreen.builder,
        languageScreen: LanguageScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
