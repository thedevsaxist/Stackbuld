import 'package:stackbuld/commons.dart';

class FilterItems extends StatelessWidget {
  const FilterItems({
    super.key,
    required this.filterItemName,
  });

  final String filterItemName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              filterItemName,
              style: GoogleFonts.poppins(
                fontSize: fontSizeBody,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Icon(CupertinoIcons.chevron_forward),
          ],
        ),
        Divider(
          height: 40,
          color: appSecondaryColor,
        ),
      ],
    );
  }
}
