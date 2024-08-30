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
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          hintText: 'Search',
          hintStyle: GoogleFonts.poppins(
            fontSize: fontSizeBody,
          ),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.filter_list),
          ),
        ),
      ),
    );
  }
}
