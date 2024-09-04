part of 'home_page_ui.dart';

abstract class HomePageLogic extends State<HomePageUi> {
  

  List<Widget> tabItems = [
    const Tab(
      child: FoodCategory(),
    ),
    const Tab(child: SportsCategory()),
    const Tab(child: DevicesCategory()),
    const Tab(child: CosmeticsCategory()),
  ];

  @override
  void initState() {
    
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  

  void getProducts() async {
    // await FirebaseFirestore.instance.
  }
}
