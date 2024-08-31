import 'package:stackbuld/commons.dart';

class PriceRangeBox extends StatelessWidget {
  const PriceRangeBox({
    super.key,
    required this.boxLabel,
  });

  final String boxLabel;

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
                color: appShadowColor,
                fontSize: fontSizeBody,
              ),
            ),
            sizedBoxHeightOf8,
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: appShadowColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: appShadowColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
