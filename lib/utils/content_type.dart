enum ContentType {
  letter(displayName: "レター"),
  hokkori(displayName: "ほっこり");

  const ContentType({required this.displayName});

  final String displayName;

  @override
  String toString() => displayName;
}
