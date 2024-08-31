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
            color: Colors.white,
          ),

          // cursor style
          cursorColor: appShadowColor,

        decoration: InputDecoration(
          // enabled border
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide(color: appShadowColor),
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
            color: appShadowColor,
          ),

          // prefix icon
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),

          // suffix icon
          suffixIcon: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/filter'),
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
