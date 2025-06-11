import 'package:flutter/material.dart';

import '../../enums/visibility_enum.dart';

class VisibilityUtils {
  static Icon getIconForVisibility(VisibilityEnum visibility, double iconSize, {List<Color>? iconColors}) {
    switch (visibility) {
      case VisibilityEnum.public:
        return Icon(Icons.public, size: iconSize, color: iconColors?[0] ?? Colors.blue);
      case VisibilityEnum.private:
        return Icon(Icons.lock, size: iconSize, color: iconColors?[1] ?? Colors.red);
      case VisibilityEnum.except:
        return Icon(Icons.remove_red_eye, size: iconSize, color: iconColors?[2] ?? Colors.orange);
    }
  }

  static String getLabelForVisibility(VisibilityEnum visibility) {
    switch (visibility) {
      case VisibilityEnum.public:
        return 'Công khai';
      case VisibilityEnum.private:
        return 'Riêng tư';
      case VisibilityEnum.except:
        return 'Ngoại trừ';
    }
  }
}
