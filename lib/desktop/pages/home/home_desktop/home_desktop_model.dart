import '/desktop/pages/home/components/card_conection/card_conection_widget.dart';
import '/desktop/pages/home/components/card_line_number/card_line_number_widget.dart';
import '/desktop/pages/home/components/card_quality/card_quality_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_desktop_widget.dart' show HomeDesktopWidget;
import 'package:flutter/material.dart';

class HomeDesktopModel extends FlutterFlowModel<HomeDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for CardConection component.
  late CardConectionModel cardConectionModel;
  // Model for CardLineNumber component.
  late CardLineNumberModel cardLineNumberModel;
  // Model for CardQuality component.
  late CardQualityModel cardQualityModel1;
  // Model for CardQuality component.
  late CardQualityModel cardQualityModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    cardConectionModel = createModel(context, () => CardConectionModel());
    cardLineNumberModel = createModel(context, () => CardLineNumberModel());
    cardQualityModel1 = createModel(context, () => CardQualityModel());
    cardQualityModel2 = createModel(context, () => CardQualityModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    cardConectionModel.dispose();
    cardLineNumberModel.dispose();
    cardQualityModel1.dispose();
    cardQualityModel2.dispose();
  }
}
