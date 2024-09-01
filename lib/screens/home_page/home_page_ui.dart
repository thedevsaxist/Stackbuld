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
    return DefaultTabController(
      length: 4,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          appBar: AppBar(
            title: selectedIndex == 1 ? const Text('Wishlist') : null,
            actions: [
              // search box and filter icon

              selectedIndex == 0
                  ? const SearchBox()
                  : const Icon(
                      Icons.search,
                    ), //TODO: When this is tapped, it should animate into a searchbox

              // cart icon
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                icon: const Icon(Icons.shopping_cart_outlined),
                selectedIcon: const Icon(Icons.shopping_cart),
                onPressed: openCart,
              ),
            ],

            // category tabs
            bottom: selectedIndex == 0
                ? TabBar(
                    tabs: tabNames,
                  )
                : null,
          ),

          // product display
          // body: Hero(
          //   transitionOnUserGestures: true,
          //   tag: 'productImage',
          //   child: Image.asset('lib/images/pictures/m4_car.jpg'),
          // ),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TabBarView(
              children: tabItems,
            ),
          ),

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
