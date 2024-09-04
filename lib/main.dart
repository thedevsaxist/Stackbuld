import 'package:provider/provider.dart';
import 'package:stackbuld/commons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductDetailsHelperMethod(context: context),
      child: const Stackbuld(),
    ),
  );
}

class Stackbuld extends StatelessWidget {
  const Stackbuld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stackbuld',
      debugShowCheckedModeBanner: false,
      // routes
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNavBarUi(),
        '/cart': (context) => const CartPageUi(),
        '/wishlist': (context) => const WishlistUi(),
        '/home_page': (context) => const HomePageUi(),
        '/filter': (context) => const ProductFilterPageUi(),
        // '/product_details': (context) => const ProductDetailsUi(),
      },
      theme: ThemeData(
        useMaterial3: true,

        // tab bar theme
        tabBarTheme: TabBarTheme(
          labelColor: appBackgroundColor,
          unselectedLabelColor: appSecondaryColor,
          indicatorColor: appBackgroundColor,
        ),

        // app bar theme
        appBarTheme: AppBarTheme(
          backgroundColor: appPrimaryColor,
          centerTitle: false,
          iconTheme: IconThemeData(color: appBackgroundColor),
          titleTextStyle: GoogleFonts.poppins(
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold,
          ),
        ),

        // bottom navigation bar theme
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: appPrimaryColor,
          selectedItemColor: appBackgroundColor,
          unselectedItemColor: appBackgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),

        // scaffold theme
        scaffoldBackgroundColor: appBackgroundColor,

        // color scheme
        colorScheme: ColorScheme.fromSeed(
          seedColor: appPrimaryColor,
        ),
      ),
    );
  }
}
