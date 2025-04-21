import 'package:fluent_ui/fluent_ui.dart';

import 'main_tabs/history_tab.dart';
import 'main_tabs/settings_tab.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: TabView(
        currentIndex: currentIndex,
        onChanged:
            (value) => setState(() {
              currentIndex = value;
            }),
        tabs: [
          Tab(
            text: Row(children: [Icon(FluentIcons.history), Text('Prev')]),
            body: HistoryTab(),
          ),
          Tab(
            text: Row(
              children: [Icon(FluentIcons.renewal_current), Text('Now')],
            ),
            body: Column(children: []),
          ),
          Tab(
            text: Row(children: [Icon(FluentIcons.settings), Text('Settings')]),
            body: SettingsTab(),
          ),
        ],
      ),
    );
  }
}
