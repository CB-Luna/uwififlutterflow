import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'login_container_model.dart';
export 'login_container_model.dart';

class LoginContainerWidget extends StatefulWidget {
  const LoginContainerWidget({super.key});

  @override
  State<LoginContainerWidget> createState() => _LoginContainerWidgetState();
}

class _LoginContainerWidgetState extends State<LoginContainerWidget> {
  late LoginContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginContainerModel());

    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      height: 700.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              4.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/x7hc1_7.png',
                width: 250.0,
                height: 75.0,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Text(
                'Login to your account',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Text(
                'Your Email',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.emailTextController,
                focusNode: _model.textFieldFocusNode1,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Enter your email...',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                validator:
                    _model.emailTextControllerValidator.asValidator(context),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Text(
                'Password',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.passwordTextController,
                focusNode: _model.textFieldFocusNode2,
                autofocus: true,
                obscureText: !_model.passwordVisibility,
                decoration: InputDecoration(
                  labelText: 'Enter your password...',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => _model.passwordVisibility =
                          !_model.passwordVisibility,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 24.0,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                validator:
                    _model.passwordTextControllerValidator.asValidator(context),
              ),
            ),
            Flexible(
              child: FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();

                  final user = await authManager.signInWithEmail(
                    context,
                    _model.emailTextController.text,
                    _model.passwordTextController.text,
                  );
                  if (user == null) {
                    return;
                  }

                  context.pushNamedAuth('NewHome', context.mounted);
                },
                text: 'Sign In',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Theme(
                    data: ThemeData(
                      checkboxTheme: const CheckboxThemeData(
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      unselectedWidgetColor:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                    child: CheckboxListTile(
                      value: _model.checkboxListTileValue ??= false,
                      onChanged: (newValue) async {
                        setState(
                            () => _model.checkboxListTileValue = newValue!);
                      },
                      title: Text(
                        'Keep me signed in',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).secondary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ),
                Text(
                  'Forgot password?',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not registered yet?',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF7D9AB0),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Try Sign Up',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(const SizedBox(width: 20.0)),
            ),
            Text(
              '© Copyright UWIFI 2023',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: const Color(0xFF7D9AB0),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
