import 'package:stackbuld/commons.dart';

/*
This file contains all sizes and measurements used in this project.
It primarily makes use of MediaQuery so as to ensure responsive/adaptive UI on different screen sizes.
*/

/// 56px
double fontSizeDisplay = 56;

/// 56px
double displayFontSizeLarge = 56;

/// 45px
double displayFontSizeMedium = 45;

/// 32px
double fontSizeHeadline = 32;

/// 22px
double fontSizeTitle = 22;

/// 16px
double fontSizeBody = 16;

/// 14px
double fontSizeLabel = 14;

/// Responsive display font size = 56
Text displayText(BuildContext context, String string, {Color? color}) => Text(
      string,
      style: GoogleFonts.dosis(
        fontSize: MediaQuery.sizeOf(context).height > 800
            ? displayFontSizeLarge
            : displayFontSizeMedium,
        fontWeight: FontWeight.w700,
      ),
    );

/// scale the font size up for larger devices from the given base font
double getResponsiveFontSize(BuildContext context, double baseFontSize,
    {double min = 14, double max = 56}) {
  double baseWidth = 375.0;
  double baseHeight = 667.0;
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double scaleFactor =
      ((screenHeight / baseHeight) + (screenWidth / baseWidth)) / 2;
  double fontSize = baseFontSize * scaleFactor;
  return fontSize.clamp(min, max);
}

// vertical sized boxes
const sizedBoxHeightOf8 = SizedBox(
  height: 8,
);
const sizedBoxHeightOf16 = SizedBox(
  height: 16,
);
const sizedBoxHeightOf32 = SizedBox(
  height: 32,
);
const sizedBoxHeightOf40 = SizedBox(
  height: 40,
);

// horizontal sized box
const sizedBoxWidthOf8 = SizedBox(
  width: 8,
);
const sizedBoxWidthOf16 = SizedBox(
  width: 16,
);
const sizedBoxWidthOf32 = SizedBox(
  width: 32,
);
const sizedBoxWidthOf40 = SizedBox(
  width: 40,
);
