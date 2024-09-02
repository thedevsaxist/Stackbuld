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
      //TODO: Correct the ui to showcase the rating as colored stars rather than none colored

      children: List.generate(
        widget.numberOfStars < 5 ? widget.numberOfStars : 5,
        (index) => const Icon(
          Icons.grade_outlined,
          size: 18,
        ),
      ),
    );
  }
}
