import 'dart:developer';

import 'package:u_wifi/auth/supabase_auth/auth_util.dart';
import 'package:u_wifi/backend/supabase/supabase.dart';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'password_recovery_copy_model.dart';
export 'password_recovery_copy_model.dart';

class PasswordRecoveryCopyWidget extends StatefulWidget {
  const PasswordRecoveryCopyWidget({
    super.key,
    required this.token,
    required this.payload,
  });

  final String token;
  final Map<String, dynamic> payload;

  @override
  State<PasswordRecoveryCopyWidget> createState() => _PasswordRecoveryCopyWidgetState();
}

class _PasswordRecoveryCopyWidgetState extends State<PasswordRecoveryCopyWidget> with TickerProviderStateMixin {
  late PasswordRecoveryCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasswordRecoveryCopyModel());

    _model.passwordTextController1 ??= TextEditingController();
    _model.passwordTextController1Validator ??= (_, value) {
      if (value == null || value.isEmpty) {
        return 'The password is required';
      }
      if (value.length < 6) {
        return 'Password must be at least 6 characters long';
      }
      return null;
    };
    _model.passwordFocusNode1 ??= FocusNode();

    _model.passwordTextController2 ??= TextEditingController();
    _model.passwordTextController2Validator ??= (_, value) {
      if (value == null || value.isEmpty) {
        return 'Confirming the password is required';
      }
      if (_model.passwordTextController1.text != value) {
        return 'Passwords don\'t match';
      }
      return null;
    };
    _model.passwordFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 50.0, 32.0, 32.0),
              child: Container(
                width: double.infinity,
                height: 170.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Recurso_31fh.png',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/White.png',
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 170.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).width >= 768.0 ? 530.0 : 630.0,
                        constraints: const BoxConstraints(
                          maxWidth: 570.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                            child: Form(
                              key: formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Container(
                                      width: 230.0,
                                      height: 16.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                    ),
                                  Text(
                                    'Change your password',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 24.0),
                                    child: Text(
                                      'Fill out the information below in order to change your password.',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                                    child: TextFormField(
                                      controller: _model.passwordTextController1,
                                      focusNode: _model.passwordFocusNode1,
                                      autofocus: false,
                                      textCapitalization: TextCapitalization.sentences,
                                      obscureText: !_model.passwordVisibility1,
                                      decoration: InputDecoration(
                                        labelText: 'New Password',
                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF4B39EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context).alternate,
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility1 = !_model.passwordVisibility1,
                                          ),
                                          focusNode: FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility1
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context).primary,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                      validator: _model.passwordTextController1Validator.asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                                    child: TextFormField(
                                      controller: _model.passwordTextController2,
                                      focusNode: _model.passwordFocusNode2,
                                      autofocus: false,
                                      textCapitalization: TextCapitalization.sentences,
                                      obscureText: !_model.passwordVisibility2,
                                      decoration: InputDecoration(
                                        labelText: 'Confirm Password',
                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF4B39EF),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context).alternate,
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility2 = !_model.passwordVisibility2,
                                          ),
                                          focusNode: FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility2
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context).primary,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                      validator: _model.passwordTextController2Validator.asValidator(context),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          //Validate form
                                          if (!formKey.currentState!.validate()) {
                                            return;
                                          }

                                          try {
                                            //Validate token
                                            final tokenValid = await SupaFlow.client.rpc(
                                              'verify_token',
                                              params: {'token_param': widget.token},
                                            );

                                            if (!tokenValid) {
                                              //TODO: show error message
                                              return null;
                                            }

                                            final passwordChanged = await SupaFlow.client.rpc(
                                              'set_new_password',
                                              params: {
                                                'token_param': widget.token,
                                                'new_plain_password': _model.passwordTextController1.text,
                                              },
                                            );

                                            if (!passwordChanged) {
                                              //TODO: show error message
                                              return null;
                                            }
                                          } catch (e) {
                                            log('Error changing user password - $e');
                                            return null;
                                          }

                                          if (!mounted) return;

                                          //TODO: sign in user after changing password
                                          GoRouter.of(context).prepareAuthEvent();
                                          final user = await authManager.signInWithEmail(
                                            context,
                                            widget.payload['email'],
                                            _model.passwordTextController1.text,
                                          );

                                          if (user == null) {
                                            return;
                                          }

                                          if (!mounted) return;
                                          context.pushNamedAuth('NewHome', context.mounted);
                                        },
                                        text: 'Change Password',
                                        options: FFButtonOptions(
                                          width: 230.0,
                                          height: 52.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context).primary,
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: 'Inter',
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(40.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                        text: 'Cancel',
                                        options: FFButtonOptions(
                                          width: 230.0,
                                          height: 52.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context).accent1,
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: 'Inter',
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(40.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
