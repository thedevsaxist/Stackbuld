import 'package:stackbuld/commons.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: TextField(
        // text color
        style: GoogleFonts.poppins(
          fontSize: fontSizeBody,
          color: appBackgroundColor,
        ),

        // cursor style
        cursorColor: appSecondaryColor,

        decoration: InputDecoration(
          // enabled border
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide(color: appSecondaryColor),
          ),

          // focused border
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.white),
          ),

          // hint text
          hintText: 'Search',
          hintStyle: GoogleFonts.poppins(
            fontSize: fontSizeBody,
            color: appSecondaryColor,
          ),

          // prefix icon
          prefixIcon: Hero(
            tag: 'searchIcon',
            child: Icon(
              Icons.search,
              color: appBackgroundColor,
            ),
          ),

          // suffix icon
          suffixIcon: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/filter'),
            child: Icon(
              Icons.filter_list,
              color: appBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
