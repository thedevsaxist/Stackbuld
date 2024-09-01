import 'package:stackbuld/commons.dart';

part 'bottom_nav_bar_logic.dart';

class BottomNavBarUi extends StatefulWidget {
  const BottomNavBarUi({super.key});

  @override
  State<BottomNavBarUi> createState() => _BottomNavBarUi();
}

class _BottomNavBarUi extends BottomNavBarLogic {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          appBar: AppBar(
            title: selectedIndex == 1 ? const Text('Wishlist') : null,

            // category tabs
            bottom: selectedIndex == 0 ? TabBar(tabs: tabNames) : null,

            actions: [
              // search box and filter icon
              pages[selectedIndex][1],

              // cart icon
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                icon: const Icon(Icons.shopping_cart_outlined),
                selectedIcon: const Icon(Icons.shopping_cart),
                onPressed: openCart,
              ),
            ],
          ),

          // product display
          body: pages[selectedIndex][0],

          // floating action buttons
          floatingActionButton:
              selectedIndex == 0 ? const HomePageFloatingIcons() : null,

          // bottom navigation bar
          bottomNavigationBar: BottomNavigationBar(
            iconSize: fontSizeHeadline,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.favorite_outline),
                activeIcon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
