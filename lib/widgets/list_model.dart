import 'package:stackbuld/commons.dart';

class ListModel extends StatelessWidget {
  const ListModel({
    super.key,
    required this.baseRow,
  });

  final Widget baseRow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // product picture
                SizedBox(
                  width: 80,
                  child: Image.asset(m4Car),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // product name

                      Text(
                        'Metamor4sis Car',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeLabel,
                        ),
                      ),

                      // product price
                      Text(
                        '₦ 100,000',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeBody,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            baseRow,
          ],
        ),
      ),
    );
  }
}
