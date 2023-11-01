///Network End Points
enum ProductNetworkPath {
  ///User posts
  posts('posts');

  /// `const ServiceNetworkPath` is a constructor for the `ServiceNetworkPath`
  const ProductNetworkPath(this.value);

  ///  variable declaration in the `ServiceNetworkPath` enum.
  final String value;

  ///[withQuery] is used to add a query to the path
  ///
  ///example: posts/12
  String withQuery(String value) {
    return '${this.value}/$value';
  }
}
