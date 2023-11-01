///Project core Radius enum
enum ProjectRadius {
  ///8
  small(8),

  ///16
  medium(16),

  ///20
  normal(20),

  ///32
  large(32);

  ///Radius value
  final double value;

  ///Project radius constructor
  const ProjectRadius(this.value);
}
