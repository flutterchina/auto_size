# auto_size
Flutter 屏幕适配，Flutter AutoSize plugin。

### 注意
本库暂未正式发布，希望大家帮忙测试。如有任何问题请及时反馈，谢谢大家！

### 使用方式
```dart
Step 1：
dependencies:
  auto_size:
    git:
      url: git://github.com/flutterchina/auto_size.git  
      
Step 2：
flutter packages get  
  
Step 3：

import 'package:auto_size/auto_size.dart';

/// 默认设计稿尺寸360*640，单位dp。
void main() => runAutoSizeApp(MyApp());

void main() => runAutoSizeApp(MyApp(), width: designWidth, height: designeight);

```

### Abort
本库屏幕适配Idea来源[genius158](https://github.com/genius158/FlutterTest)作者。


