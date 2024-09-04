import 'package:stackbuld/commons.dart';

class PriceRangeBox extends StatelessWidget {
  const PriceRangeBox({
    super.key,
    required this.boxLabel,
    required this.controller,
  });

  final String boxLabel;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              boxLabel.toUpperCase(),
              style: GoogleFonts.poppins(
                color: appSecondaryColor,
                fontSize: fontSizeBody,
              ),
            ),
            sizedBoxHeightOf8,
            TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: appSecondaryColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: appSecondaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
