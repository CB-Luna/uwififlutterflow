import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_picture_container_model.dart';
export 'user_picture_container_model.dart';

class UserPictureContainerWidget extends StatefulWidget {
  const UserPictureContainerWidget({super.key});

  @override
  State<UserPictureContainerWidget> createState() =>
      _UserPictureContainerWidgetState();
}

class _UserPictureContainerWidgetState
    extends State<UserPictureContainerWidget> {
  late UserPictureContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPictureContainerModel());

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
      width: 80.0,
      height: 80.0,
      constraints: const BoxConstraints(
        maxWidth: 100.0,
        maxHeight: 100.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0x00FFFFFF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/User.png',
          ).image,
        ),
      ),
    );
  }
}
