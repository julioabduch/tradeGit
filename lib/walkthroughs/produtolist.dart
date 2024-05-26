import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final button8qieynrx = GlobalKey();
final imageZy5xps1l = GlobalKey();
final iconVxb72pza = GlobalKey();

/// produtolist
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: button8qieynrx,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to go back  to supplier page',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: imageZy5xps1l,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to see product details',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconVxb72pza,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to edit product information',
            ),
          ),
        ],
      ),
    ];
