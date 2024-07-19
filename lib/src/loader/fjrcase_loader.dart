import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

final class FjrCaseLoader extends AsyncOverlay {
  FjrCaseLoader()
      : super(
          id: 0,
          builder: (BuildContext context, AsyncValue<RouteSettings> settings) {
            return Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: LoadingAnimationWidget.threeArchedCircle(
                  color: Colors.white,
                  size: 50,
                ),
              ),
            );
          },
        );
}
