import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: const EdgeInsets.all(0.0),
      header: SizedBox(
        height: 32,
        child: WindowCaption(
          title: const Text('Simple Office Installer',
              style: TextStyle(fontSize: 12.0)),
          brightness: FluentTheme.of(context).brightness,
        ),
      ),
      content: const SizedBox.expand(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
