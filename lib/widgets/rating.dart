import 'package:stackbuld/commons.dart';

class Rating extends StatefulWidget {
  const Rating({
    super.key,
    required this.numberOfStars,
  });

  final int numberOfStars;

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            widget.numberOfStars,
            (index) => Icon(
              Icons.grade,
              size: 18,
              color: Colors.amber[700],
            ),
          ),
        ),
        Row(
          children: List.generate(
            5 - widget.numberOfStars,
            (index) => const Icon(
              Icons.grade_outlined,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
