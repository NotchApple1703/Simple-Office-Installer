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
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 32, 32, 32),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
            ),
          ),
          SizedBox(
            width: 250,
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 175,
                  child: FilledButton(
                    child: const Text('Deploy'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 175,
                  child: ComboBox(
                    isExpanded: true,
                    placeholder: const Text('Architecture'),
                    focusColor: Colors.red,
                    onChanged: (value) => debugPrint(value.toString()),
                    items: const [
                      ComboBoxItem(value: 64, child: Text('64bit')),
                      ComboBoxItem(value: 32, child: Text('32bit'))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
