class Result {
  final int? percentage;
  final String? advice;

  Result({this.percentage, this.advice});

  Result.fromMap(Map<String, dynamic> map)
      : percentage = map['percentage'],
        advice = map['advice'];

  Map<String, dynamic> toMap() {
    return {
      'percentage': percentage,
      'advice': advice,
    };
  }
}
