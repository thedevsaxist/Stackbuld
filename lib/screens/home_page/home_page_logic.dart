part of 'home_page_ui.dart';

abstract class HomePageLogic extends State<HomePageUi> {
  List<Widget> pages = [
    const HomePageUi(),
    const WishlistUi(),
  ];

  List<Widget> tabItems = [
    const Tab(
      child: FoodCategory(),
    ),
    const Tab(child: SportsCategory()),
    const Tab(child: DevicesCategory()),
    const Tab(child: CosmeticsCategory()),
  ];

  List<Widget> tabNames = [
    Icon(
      Icons.food_bank_rounded,
      size: fontSizeHeadline,
    ),
    Icon(
      Icons.sports_tennis_rounded,
      size: fontSizeHeadline,
    ),
    Icon(
      Icons.laptop_mac_rounded,
      size: fontSizeHeadline,
    ),
    Icon(
      Icons.emoji_nature_sharp,
      size: fontSizeHeadline,
    )
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future openCart() => Navigator.pushNamed(context, '/cart');
}
