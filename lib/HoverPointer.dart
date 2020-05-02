import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_html/prefer_sdk/html.dart' as html;

class HoverPointer extends MouseRegion {
  static final appContainer =
      html.window.document.getElementById('app-container');
  HoverPointer({Widget child, Function onHover, Function onExit})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
            if (onHover != null) {
              onHover();
            }
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
            if (onExit != null) {
              onExit();
            }
          },
          child: child,
        );
}
