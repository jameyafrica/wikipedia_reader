class Summary {
  final Titles titles;
  final String extract;

  Summary({
    required this.titles,
    required this.extract,
  });

  factory Summary.fromJson(Map<String, Object?> json) {
    return Summary(
      titles: Titles.fromJson(json['titles'] as Map<String, Object?>),
      extract: json['extract'] as String? ?? '',
    );
  }
}

class Titles {
  final String normalized;

  Titles({
    required this.normalized,
  });

  factory Titles.fromJson(Map<String, Object?> json) {
    return Titles(
      normalized: json['normalized'] as String? ?? '',
    );
  }
}