import '/desktop/widgets/top_bar/widgets/date_container/date_container_widget.dart';
import '/desktop/widgets/top_bar/widgets/notification_icon_container/notification_icon_container_widget.dart';
import '/desktop/widgets/top_bar/widgets/search_bar/search_bar_widget.dart';
import '/desktop/widgets/top_bar/widgets/user_picture_container/user_picture_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_bar_widget.dart' show TopBarWidget;
import 'package:flutter/material.dart';

class TopBarModel extends FlutterFlowModel<TopBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for search_bar component.
  late SearchBarModel searchBarModel;
  // Model for date_container component.
  late DateContainerModel dateContainerModel;
  // Model for notification_icon_container component.
  late NotificationIconContainerModel notificationIconContainerModel;
  // Model for user_picture_container component.
  late UserPictureContainerModel userPictureContainerModel;

  @override
  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
    dateContainerModel = createModel(context, () => DateContainerModel());
    notificationIconContainerModel =
        createModel(context, () => NotificationIconContainerModel());
    userPictureContainerModel =
        createModel(context, () => UserPictureContainerModel());
  }

  @override
  void dispose() {
    searchBarModel.dispose();
    dateContainerModel.dispose();
    notificationIconContainerModel.dispose();
    userPictureContainerModel.dispose();
  }
}
