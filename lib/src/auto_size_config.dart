/// Auto Size Config.
class AutoSizeConfig {
  ///  width 默认设计稿  尺寸dp or pt。
  static double _designWidth = 360;
  static double _designHeight = 640;

  static double get designWidth => _designWidth;

  static double get designHeight => _designHeight;

  /// 配置设计稿尺寸 屏幕 宽，高.
  /// Configuration design draft size  screen width, height, density.
  static void setDesignWH({double width, double height}) {
    _designWidth = width ?? _designWidth;
    _designHeight = height ?? _designHeight;
  }
}
