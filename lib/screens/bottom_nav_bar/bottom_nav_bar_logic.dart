part of 'bottom_nav_bar_ui.dart';

abstract class BottomNavBarLogic extends State<BottomNavBarUi> {
  List<List<Widget>> pages = [
    [
      const HomePageUi(),
      const SearchBox(),
    ],
    [
      const WishlistUi(),
      Icon(
        Icons.search,
      ), //TODO: When this is tapped, it should animate into a searchbox
    ],
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
