import 'package:stackbuld/commons.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonLabel,
  });

  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 70,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: appPrimaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    buttonLabel.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeBody,
                    ),
                  ),
                ),
              ),
            ),
          ),
          sizedBoxHeightOf32,
        ],
      ),
    );
  }
}
