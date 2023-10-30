///Custom Mem Cache for using the network image
final class CustomMemCache {
  ///`height` and `width` is used for caching image
  const CustomMemCache({required this.height, required this.width});

  ///This variable is used to store the height of an image for caching purposes.
  final int height;

  ///This variable is used to store the width of an image for caching purposes.
  final int width;
}
