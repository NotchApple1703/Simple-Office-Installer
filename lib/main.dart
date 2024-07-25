import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';
import 'package:system_theme/system_theme.dart';

import 'package:simple_office_installer/theme.dart';
import 'package:simple_office_installer/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemTheme.accentColor.load();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    title: 'Simple Office Installer',
    size: Size(900, 500),
    minimumSize: Size(900, 500),
    titleBarStyle: TitleBarStyle.hidden,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Simple Office Installer',
      debugShowCheckedModeBanner: false,
      themeMode: systemThemeMode,
      color: systemAccentColor,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const HomeScreen(),
    );
  }
}
