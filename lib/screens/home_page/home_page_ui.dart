import 'package:stackbuld/commons.dart';

part 'home_page_logic.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUi();
}

class _HomePageUi extends HomePageLogic {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TabBarView(
        children: tabItems,
      ),
    );
  }
}
