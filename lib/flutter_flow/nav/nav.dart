import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'Welcome',
          path: '/welcome',
          builder: (context, params) => const WelcomeWidget(),
        ),
        FFRoute(
          name: 'GetStarted',
          path: '/getStarted',
          builder: (context, params) => const GetStartedWidget(),
        ),
        FFRoute(
          name: 'SignalDirectionResults',
          path: '/signalDirectionResults',
          builder: (context, params) => const SignalDirectionResultsWidget(),
        ),
        FFRoute(
          name: 'Home2',
          path: '/home2',
          builder: (context, params) => Home2Widget(
            currentUserIdAPI: params.getParam(
              'currentUserIdAPI',
              ParamType.String,
            ),
            currenUserEmailAPI: params.getParam(
              'currenUserEmailAPI',
              ParamType.String,
            ),
            currentUserAcessTokenAPI: params.getParam(
              'currentUserAcessTokenAPI',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Whatsinthebox',
          path: '/whatsinthebox',
          builder: (context, params) => const WhatsintheboxWidget(),
        ),
        FFRoute(
          name: 'Location',
          path: '/location',
          builder: (context, params) => const LocationWidget(),
        ),
        FFRoute(
          name: 'Video',
          path: '/video',
          builder: (context, params) => const VideoWidget(),
        ),
        FFRoute(
          name: 'SignalLocation',
          path: '/signalLocation',
          builder: (context, params) => const SignalLocationWidget(),
        ),
        FFRoute(
          name: 'AddressInput',
          path: '/addressInput',
          builder: (context, params) => const AddressInputWidget(),
        ),
        FFRoute(
          name: 'ConfirmLocation',
          path: '/confirmLocation',
          builder: (context, params) => const ConfirmLocationWidget(),
        ),
        FFRoute(
          name: 'ConnectGateway',
          path: '/connectGateway',
          builder: (context, params) => const ConnectGatewayWidget(),
        ),
        FFRoute(
          name: 'ScanQRCode',
          path: '/scanQRCode',
          builder: (context, params) => const ScanQRCodeWidget(),
        ),
        FFRoute(
          name: 'NoQRCode',
          path: '/noQRCode',
          builder: (context, params) => const NoQRCodeWidget(),
        ),
        FFRoute(
          name: 'GatewayConnectionStatus',
          path: '/gatewayConnectionStatus',
          builder: (context, params) => const GatewayConnectionStatusWidget(),
        ),
        FFRoute(
          name: 'WifiPermission',
          path: '/wifiPermission',
          builder: (context, params) => const WifiPermissionWidget(),
        ),
        FFRoute(
          name: 'Connecting',
          path: '/connecting',
          builder: (context, params) => const ConnectingWidget(),
        ),
        FFRoute(
          name: 'AlmostThere',
          path: '/almostThere',
          builder: (context, params) => const AlmostThereWidget(),
        ),
        FFRoute(
          name: 'AdvancedCellularMetrics',
          path: '/advancedCellularMetrics',
          builder: (context, params) => const AdvancedCellularMetricsWidget(),
        ),
        FFRoute(
          name: 'DeviceSettings',
          path: '/deviceSettings',
          builder: (context, params) => const DeviceSettingsWidget(),
        ),
        FFRoute(
          name: 'PaymentDetails',
          path: '/paymentDetails',
          builder: (context, params) => const PaymentDetailsWidget(),
        ),
        FFRoute(
          name: 'PlanCheckout',
          path: '/planCheckout',
          builder: (context, params) => const PlanCheckoutWidget(),
        ),
        FFRoute(
          name: 'PaymentSuccess',
          path: '/paymentSuccess',
          builder: (context, params) => const PaymentSuccessWidget(),
        ),
        FFRoute(
          name: 'UserProfile',
          path: '/userProfile',
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'Usage',
          path: '/usage',
          builder: (context, params) => const UsageWidget(),
        ),
        FFRoute(
          name: 'GadgetProduct',
          path: '/gadgetProduct',
          builder: (context, params) => const GadgetProductWidget(),
        ),
        FFRoute(
          name: 'ClothingProduct',
          path: '/clothingProduct',
          builder: (context, params) => const ClothingProductWidget(),
        ),
        FFRoute(
          name: 'FreshMerch',
          path: '/freshMerch',
          builder: (context, params) => const FreshMerchWidget(),
        ),
        FFRoute(
          name: 'myCart',
          path: '/myCart',
          builder: (context, params) => const MyCartWidget(),
        ),
        FFRoute(
          name: 'ProductsCheckout',
          path: '/productsCheckout',
          builder: (context, params) => const ProductsCheckoutWidget(),
        ),
        FFRoute(
          name: 'PaymentMethods',
          path: '/paymentMethods',
          builder: (context, params) => const PaymentMethodsWidget(),
        ),
        FFRoute(
          name: 'DetailsSupport',
          path: '/detailsSupport',
          builder: (context, params) => const DetailsSupportWidget(),
        ),
        FFRoute(
          name: 'TEST',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        ),
        FFRoute(
          name: 'DektopLayout',
          path: '/dektopLayout',
          builder: (context, params) => const DektopLayoutWidget(),
        ),
        FFRoute(
          name: 'TabletLayout',
          path: '/tabletLayout',
          builder: (context, params) => const TabletLayoutWidget(),
        ),
        FFRoute(
          name: 'MainLayout',
          path: '/mainLayout',
          builder: (context, params) => const MainLayoutWidget(),
        ),
        FFRoute(
          name: 'home_page',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(
            currentUserIdAPI: params.getParam(
              'currentUserIdAPI',
              ParamType.String,
            ),
            currentUserEmailAPI: params.getParam(
              'currentUserEmailAPI',
              ParamType.String,
            ),
            currentUserAccessTokenAPI: params.getParam(
              'currentUserAccessTokenAPI',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'intro_page',
          path: '/introPage',
          builder: (context, params) => const IntroPageWidget(),
        ),
        FFRoute(
          name: 'login_page',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'loginCopy',
          path: '/loginCopy',
          builder: (context, params) => const LoginCopyWidget(),
        ),
        FFRoute(
          name: 'SupportCopy2Copy',
          path: '/supportCopy2Copy',
          builder: (context, params) => const SupportCopy2CopyWidget(),
        ),
        FFRoute(
          name: 'SupportCopy2',
          path: '/supportCopy2',
          builder: (context, params) => const SupportCopy2Widget(),
        ),
        FFRoute(
          name: 'support_page',
          path: '/supportPage',
          builder: (context, params) => const SupportPageWidget(),
        ),
        FFRoute(
          name: 'chat_page',
          path: '/chatPage',
          builder: (context, params) => const ChatPageWidget(),
        ),
        FFRoute(
          name: 'ChatDemoCopy',
          path: '/chatDemoCopy',
          builder: (context, params) => const ChatDemoCopyWidget(),
        ),
        FFRoute(
          name: 'IntroPage_mobilCopy',
          path: '/introPageMobilCopy',
          builder: (context, params) => const IntroPageMobilCopyWidget(),
        ),
        FFRoute(
          name: 'WelcomeCopy',
          path: '/welcomeCopy',
          builder: (context, params) => const WelcomeCopyWidget(),
        ),
        FFRoute(
          name: 'my_device_page',
          path: '/myDevicePage',
          builder: (context, params) => const MyDevicePageWidget(),
        ),
        FFRoute(
          name: 'network_page',
          path: '/networkPage',
          builder: (context, params) => const NetworkPageWidget(),
        ),
        FFRoute(
          name: 'more_options_page',
          path: '/moreOptionsPage',
          builder: (context, params) => const MoreOptionsPageWidget(),
        ),
        FFRoute(
          name: 'MoreCopy',
          path: '/moreCopy',
          builder: (context, params) => const MoreCopyWidget(),
        ),
        FFRoute(
          name: 'MyDevicesCopy',
          path: '/myDevicesCopy',
          builder: (context, params) => const MyDevicesCopyWidget(),
        ),
        FFRoute(
          name: 'NetworkCopy',
          path: '/networkCopy',
          builder: (context, params) => const NetworkCopyWidget(),
        ),
        FFRoute(
          name: 'SpeedTestCopy',
          path: '/speedTestCopy',
          builder: (context, params) => const SpeedTestCopyWidget(),
        ),
        FFRoute(
          name: 'PasswordRecoveryCopy',
          path: '/passwordRecoveryCopy',
          builder: (context, params) => const PasswordRecoveryCopyWidget(),
        ),
        FFRoute(
          name: 'merch_page',
          path: '/merchPage',
          builder: (context, params) => const MerchPageWidget(),
        ),
        FFRoute(
          name: 'GadgetProduct_tablet',
          path: '/gadgetProductTablet',
          builder: (context, params) => const GadgetProductTabletWidget(),
        ),
        FFRoute(
          name: 'PlanCheckout_tablet',
          path: '/planCheckoutTablet',
          builder: (context, params) => const PlanCheckoutTabletWidget(),
        ),
        FFRoute(
          name: 'ProductsCheckout_tablet',
          path: '/productsCheckoutTablet',
          builder: (context, params) => const ProductsCheckoutTabletWidget(),
        ),
        FFRoute(
          name: 'Welcome_tablet',
          path: '/welcomeTablet',
          builder: (context, params) => const WelcomeTabletWidget(),
        ),
        FFRoute(
          name: 'AddressInput_tablet',
          path: '/addressInputTablet',
          builder: (context, params) => const AddressInputTabletWidget(),
        ),
        FFRoute(
          name: 'AlmostThere_tablet',
          path: '/almostThereTablet',
          builder: (context, params) => const AlmostThereTabletWidget(),
        ),
        FFRoute(
          name: 'ConfirmLocation_tablet',
          path: '/confirmLocationTablet',
          builder: (context, params) => const ConfirmLocationTabletWidget(),
        ),
        FFRoute(
          name: 'ConnectGateway_tablet',
          path: '/connectGatewayTablet',
          builder: (context, params) => const ConnectGatewayTabletWidget(),
        ),
        FFRoute(
          name: 'Connecting_tablet',
          path: '/connectingTablet',
          builder: (context, params) => const ConnectingTabletWidget(),
        ),
        FFRoute(
          name: 'GatewayConnectionStatus_tablet',
          path: '/gatewayConnectionStatusTablet',
          builder: (context, params) => const GatewayConnectionStatusTabletWidget(),
        ),
        FFRoute(
          name: 'GetStarted_tablet',
          path: '/getStartedTablet',
          builder: (context, params) => const GetStartedTabletWidget(),
        ),
        FFRoute(
          name: 'Location_tablet',
          path: '/locationTablet',
          builder: (context, params) => const LocationTabletWidget(),
        ),
        FFRoute(
          name: 'NoQRCode_tablet',
          path: '/noQRCodeTablet',
          builder: (context, params) => const NoQRCodeTabletWidget(),
        ),
        FFRoute(
          name: 'ScanQRCode_tablet',
          path: '/scanQRCodeTablet',
          builder: (context, params) => const ScanQRCodeTabletWidget(),
        ),
        FFRoute(
          name: 'SignalDirectionResults_tablet',
          path: '/signalDirectionResultsTablet',
          builder: (context, params) => const SignalDirectionResultsTabletWidget(),
        ),
        FFRoute(
          name: 'SignalLocation_tablet',
          path: '/signalLocationTablet',
          builder: (context, params) => const SignalLocationTabletWidget(),
        ),
        FFRoute(
          name: 'Video_tablet',
          path: '/videoTablet',
          builder: (context, params) => const VideoTabletWidget(),
        ),
        FFRoute(
          name: 'Whatsinthebox_tablet',
          path: '/whatsintheboxTablet',
          builder: (context, params) => const WhatsintheboxTabletWidget(),
        ),
        FFRoute(
          name: 'WifiPermission_tablet',
          path: '/wifiPermissionTablet',
          builder: (context, params) => const WifiPermissionTabletWidget(),
        ),
        FFRoute(
          name: 'AdvancedCellularMetrics_tablet',
          path: '/advancedCellularMetricsTablet',
          builder: (context, params) => const AdvancedCellularMetricsTabletWidget(),
        ),
        FFRoute(
          name: 'ClothingProduct_tablet',
          path: '/clothingProductTablet',
          builder: (context, params) => const ClothingProductTabletWidget(),
        ),
        FFRoute(
          name: 'myCart_tablet',
          path: '/myCartTablet',
          builder: (context, params) => const MyCartTabletWidget(),
        ),
        FFRoute(
          name: 'PaymentDetails_tablet',
          path: '/paymentDetailsTablet',
          builder: (context, params) => const PaymentDetailsTabletWidget(),
        ),
        FFRoute(
          name: 'PaymentMethods_tablet',
          path: '/paymentMethodsTablet',
          builder: (context, params) => const PaymentMethodsTabletWidget(),
        ),
        FFRoute(
          name: 'PaymentSuccess_tablet',
          path: '/paymentSuccessTablet',
          builder: (context, params) => const PaymentSuccessTabletWidget(),
        ),
        FFRoute(
          name: 'Usage_tablet',
          path: '/usageTablet',
          builder: (context, params) => const UsageTabletWidget(),
        ),
        FFRoute(
          name: 'UserProfile_tablet',
          path: '/userProfileTablet',
          builder: (context, params) => const UserProfileTabletWidget(),
        ),
        FFRoute(
          name: 'DeviceSettings_tablet',
          path: '/deviceSettingsTablet',
          builder: (context, params) => const DeviceSettingsTabletWidget(),
        ),
        FFRoute(
          name: 'DetailsSupport_tablet',
          path: '/detailsSupportTablet',
          builder: (context, params) => const DetailsSupportTabletWidget(),
        ),
        FFRoute(
          name: 'speedtest_desktop',
          path: '/speedtestDesktop',
          builder: (context, params) => const SpeedtestDesktopWidget(),
        ),
        FFRoute(
          name: 'speed_test_page',
          path: '/speedTestPage',
          builder: (context, params) => const SpeedTestPageWidget(),
        ),
        FFRoute(
          name: 'Ads_Intro_page',
          path: '/adsIntroPage',
          builder: (context, params) => const AdsIntroPageWidget(),
        ),
        FFRoute(
          name: 'login_pageCopy',
          path: '/loginPageCopy',
          builder: (context, params) => const LoginPageCopyWidget(),
        ),
        FFRoute(
          name: 'Ads_Home_page',
          path: '/adsHomePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Ads_Home_page')
              : const AdsHomePageWidget(),
        ),
        FFRoute(
          name: 'Ads_Search_page',
          path: '/adsSearchPage',
          builder: (context, params) => const AdsSearchPageWidget(),
        ),
        FFRoute(
          name: 'adDetails_mobile',
          path: '/adDetailsMobile',
          builder: (context, params) => AdDetailsMobileWidget(
            adId: params.getParam(
              'adId',
              ParamType.int,
            ),
            adPoster: params.getParam(
              'adPoster',
              ParamType.String,
            ),
            adTitle: params.getParam(
              'adTitle',
              ParamType.String,
            ),
            adOverview: params.getParam(
              'adOverview',
              ParamType.String,
            ),
            video: params.getParam(
              'video',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'videoPlayer',
          path: '/videoPlayer',
          builder: (context, params) => VideoPlayerWidget(
            video: params.getParam(
              'video',
              ParamType.String,
            ),
            adId: params.getParam(
              'adId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'pointsWallet',
          path: '/pointsWallet',
          builder: (context, params) => const PointsWalletWidget(),
        ),
        FFRoute(
          name: 'Discover',
          path: '/discover',
          builder: (context, params) => const DiscoverWidget(),
        ),
        FFRoute(
          name: 'ProfileNew',
          path: '/profileNew',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ProfileNew')
              : const ProfileNewWidget(),
        ),
        FFRoute(
          name: 'ScrollVideos',
          path: '/scrollVideos',
          builder: (context, params) => const ScrollVideosWidget(),
        ),
        FFRoute(
          name: 'NewHome',
          path: '/newHome',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'NewHome')
              : const NewHomeWidget(),
        ),
        FFRoute(
          name: 'NewWallet',
          path: '/newWallet',
          builder: (context, params) => const NewWalletWidget(),
        ),
        FFRoute(
          name: 'HealthCareVideo',
          path: '/healthCareVideo',
          builder: (context, params) => const HealthCareVideoWidget(),
        ),
        FFRoute(
          name: 'SportsVideo',
          path: '/sportsVideo',
          builder: (context, params) => const SportsVideoWidget(),
        ),
        FFRoute(
          name: 'EducationVideo',
          path: '/educationVideo',
          builder: (context, params) => const EducationVideoWidget(),
        ),
        FFRoute(
          name: 'TechnologyVideo',
          path: '/technologyVideo',
          builder: (context, params) => const TechnologyVideoWidget(),
        ),
        FFRoute(
          name: 'FoodVideo',
          path: '/foodVideo',
          builder: (context, params) => const FoodVideoWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/4K_RENDER.gif',
                        fit: BoxFit.cover,
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
