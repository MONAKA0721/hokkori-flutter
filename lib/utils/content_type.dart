enum ContentType {
  praise(displayName: "ほっこり"),
  work(displayName: "作品");

  const ContentType({required this.displayName});

  final String displayName;

  @override
  String toString() => displayName;
}
