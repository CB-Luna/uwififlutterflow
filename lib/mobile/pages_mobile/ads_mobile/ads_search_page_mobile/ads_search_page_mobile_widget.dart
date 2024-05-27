import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ads_search_page_mobile_model.dart';
export 'ads_search_page_mobile_model.dart';

class AdsSearchPageMobileWidget extends StatefulWidget {
  const AdsSearchPageMobileWidget({super.key});

  @override
  State<AdsSearchPageMobileWidget> createState() =>
      _AdsSearchPageMobileWidgetState();
}

class _AdsSearchPageMobileWidgetState extends State<AdsSearchPageMobileWidget> {
  late AdsSearchPageMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsSearchPageMobileModel());

    _model.searchTextTextController ??= TextEditingController();
    _model.searchTextFocusNode ??= FocusNode();

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 24.0),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.searchTextTextController,
                  focusNode: _model.searchTextFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.searchTextTextController',
                    const Duration(milliseconds: 500),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Search for companies or business...',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  validator: _model.searchTextTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
          ),
          if (_model.searchTextTextController.text == '')
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                  Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_ptcOIy.json',
                    width: 150.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                    child: Text(
                      'By typing in search box, U-wifi app search in business, companies and products then show you the best results. ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
