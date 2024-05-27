import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'network_page_content_model.dart';
export 'network_page_content_model.dart';

class NetworkPageContentWidget extends StatefulWidget {
  const NetworkPageContentWidget({super.key});

  @override
  State<NetworkPageContentWidget> createState() =>
      _NetworkPageContentWidgetState();
}

class _NetworkPageContentWidgetState extends State<NetworkPageContentWidget> {
  late NetworkPageContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NetworkPageContentModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Network Settings',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: TextFormField(
            controller: _model.textController1,
            focusNode: _model.textFieldFocusNode1,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'WiFi Network name (SSID)',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              hintText: 'Enter your address...',
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            validator: _model.textController1Validator.asValidator(context),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
          child: TextFormField(
            controller: _model.textController2,
            focusNode: _model.textFieldFocusNode2,
            autofocus: false,
            obscureText: !_model.passwordVisibility,
            decoration: InputDecoration(
              labelText: 'WiFi Network password (key)',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              alignLabelWithHint: false,
              hintText: 'Enter your address...',
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              suffixIcon: InkWell(
                onTap: () => setState(
                  () => _model.passwordVisibility = !_model.passwordVisibility,
                ),
                focusNode: FocusNode(skipTraversal: true),
                child: Icon(
                  _model.passwordVisibility
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 20.0,
                ),
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            validator: _model.textController2Validator.asValidator(context),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              AutoSizeText(
                'Password must be 8-63 Characters',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Advanced Settings',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  'What do these mean?',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Frecuency band',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController1 ??=
                FormFieldController<String>(
              _model.dropDownValue1 ??= 'Automatic (recommended)',
            ),
            options: const ['Automatic (recommended)'],
            onChanged: (val) => setState(() => _model.dropDownValue1 = val),
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 50.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
            hintText: 'Frecuency band',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 2.0,
            borderRadius: 8.0,
            margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
            hidesUnderline: true,
            isOverButton: true,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'WPA Version',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).tertiary,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController2 ??=
                FormFieldController<String>(
              _model.dropDownValue2 ??= 'WPA2/WPA3 (recommended)',
            ),
            options: const ['WPA2/WPA3 (recommended)'],
            onChanged: (val) => setState(() => _model.dropDownValue2 = val),
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 50.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
            hintText: 'Please select...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 2.0,
            borderRadius: 8.0,
            margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
            hidesUnderline: true,
            isOverButton: true,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'WPA Encryption mode',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).tertiary,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController3 ??=
                FormFieldController<String>(
              _model.dropDownValue3 ??= 'AES (recommended)',
            ),
            options: const ['AES (recommended)'],
            onChanged: (val) => setState(() => _model.dropDownValue3 = val),
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 50.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
            hintText: 'Please select...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 2.0,
            borderRadius: 8.0,
            margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
            hidesUnderline: true,
            isOverButton: true,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ),
        Divider(
          thickness: 2.0,
          indent: 20.0,
          endIndent: 20.0,
          color: FlutterFlowTheme.of(context).tertiary,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Text(
                'Hidden SSID',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: Switch.adaptive(
                value: _model.switchValue ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue = newValue);
                },
                activeColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).accent1,
                inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2.0,
          indent: 20.0,
          endIndent: 20.0,
          color: FlutterFlowTheme.of(context).tertiary,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Location');
                },
                text: 'Add',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 52.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 52.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
