import 'package:stackbuld/commons.dart';

class Rating extends StatefulWidget {
  const Rating({
    super.key,
    required this.productRating,
  });

  final double productRating;

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  Widget _buildStar(int index) {
    if (widget.productRating >= index + 1) {
      return Icon(
        Icons.star_rounded,
        size: 18,
        color: Colors.amber[700],
      );
    } 
    else if (widget.productRating >= index + 0.5) {
      return Icon(
        Icons.star_half_rounded,
        size: 18,
        color: Colors.amber[700],
      );
    } 
    else {
      return const Icon(
        Icons.star_outline_rounded,
        size: 18,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStar(index)),
    );
  }
}
