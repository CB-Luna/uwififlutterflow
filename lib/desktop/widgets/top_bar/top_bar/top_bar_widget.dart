import '/desktop/widgets/top_bar/widgets/date_container/date_container_widget.dart';
import '/desktop/widgets/top_bar/widgets/notification_icon_container/notification_icon_container_widget.dart';
import '/desktop/widgets/top_bar/widgets/search_bar/search_bar_widget.dart';
import '/desktop/widgets/top_bar/widgets/user_picture_container/user_picture_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_bar_model.dart';
export 'top_bar_model.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  late TopBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopBarModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 100.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              decoration: const BoxDecoration(),
              child: wrapWithModel(
                model: _model.searchBarModel,
                updateCallback: () => setState(() {}),
                child: const SearchBarWidget(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            height: 80.0,
            constraints: const BoxConstraints(
              minWidth: 280.0,
              maxWidth: 500.0,
            ),
            decoration: const BoxDecoration(),
            child: wrapWithModel(
              model: _model.dateContainerModel,
              updateCallback: () => setState(() {}),
              child: const DateContainerWidget(),
            ),
          ),
          wrapWithModel(
            model: _model.notificationIconContainerModel,
            updateCallback: () => setState(() {}),
            child: const NotificationIconContainerWidget(),
          ),
          wrapWithModel(
            model: _model.userPictureContainerModel,
            updateCallback: () => setState(() {}),
            child: const UserPictureContainerWidget(),
          ),
        ].divide(const SizedBox(width: 20.0)),
      ),
    );
  }
}
