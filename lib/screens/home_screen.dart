import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';

import 'package:simple_office_installer/widgets/card.dart';

List<String> updateChannelList = const [
  'Current Channel',
  'Current Channel (Preview)',
  'Beta Channel',
  'Monthly Enterprise Channel',
  'Semi-Annual Enterprise Channel',
  'Semi-Annual Enterprise Channel (Preview)',
  'Office 2019 Perpetual Channel',
  'Office 2021 Perpetual Channel',
  'Office 2024 Perpetual Channel',
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedArchitecture = 64;
  String _selectedUpdateChannel = 'Current Channel';
  bool _createDesktopShortcut = false;

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
              decoration: BoxDecoration(
                color: FluentTheme.of(context).brightness.isDark ? const Color.fromARGB(255, 32, 32, 32) : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [],
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: FilledButton(
                    child: const Text('Deploy'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: 250,
                  child: ComboBox(
                    value: _selectedArchitecture,
                    onChanged: (value) => setState(
                      () => _selectedArchitecture = value!,
                    ),
                    isExpanded: true,
                    items: const [
                      ComboBoxItem(value: 64, child: Text('64-bit')),
                      ComboBoxItem(value: 32, child: Text('32-bit')),
                      ComboBoxItem(value: 32, child: Text('ARM')),
                      ComboBoxItem(value: 64, child: Text('ARM64'))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 250,
                  child: ComboBox(
                    value: _selectedUpdateChannel,
                    onChanged: (value) => setState(
                      () => _selectedUpdateChannel = value!,
                    ),
                    isExpanded: true,
                    items: updateChannelList.map(
                      (value) {
                        return ComboBoxItem(
                          value: value,
                          child: Tooltip(
                            message: value,
                            child: Text(value,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
                const SizedBox(height: 10),
                CustomCard(
                  width: 250,
                  height: 34,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Create Desktop Shortcut'),
                      ToggleSwitch(
                        checked: _createDesktopShortcut,
                        onChanged: (value) => setState(
                          () => _createDesktopShortcut = value,
                        ),
                      )
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
