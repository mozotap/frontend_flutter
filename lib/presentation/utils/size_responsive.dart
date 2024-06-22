import 'package:flutter/material.dart';

class SizeResponsive {
  static double size16(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 24.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 32.0;
    } else {
      // Web
      return 64.0;
    }
  }

  static double size16Sm(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 16.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 20.0;
    } else {
      // Web
      return 24.0;
    }
  }

  static double size14Sm(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 14.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 16.0;
    } else {
      // Web
      return 18.0;
    }
  }

  static double size12Sm(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 8;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 12.0;
    } else {
      // Web
      return 12.0;
    }
  }

  static double size8Sm(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 0.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 4.0;
    } else {
      // Web
      return 6.0;
    }
  }

  static double size8(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 8.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 16.0;
    } else {
      // Web
      return 32.0;
    }
  }

  static double size32(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 32.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 64.0;
    } else {
      // Web
      return 128.0;
    }
  }

  static double size400(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 400.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 480.0;
    } else {
      // Web
      return 520.0;
    }
  }

  static double size380(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // Mobile
      return 380.0;
    } else if (MediaQuery.of(context).size.width < 1200) {
      // Tablet
      return 420.0;
    } else {
      // Web
      return 480.0;
    }
  }

  static double responsiveSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 320.0) {
      return baseSize * 0.7;
    } else if (screenWidth > 320.0 && screenWidth <= 375.0) {
      return baseSize * 0.8;
    } else if (screenWidth > 375.0 && screenWidth <= 414.0) {
      return baseSize * 0.9;
    } else {
      return baseSize;
    }
  }
}
