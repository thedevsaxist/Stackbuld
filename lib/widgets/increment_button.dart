import 'package:stackbuld/commons.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  final Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // TODO: change the color to a lighter shade when the item count is 1.
          color: appPrimaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          size: fontSizeHeadline,
          color: Colors.white,
        ),
      ),
    );
  }
}
