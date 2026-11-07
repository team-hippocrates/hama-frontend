class ReviewItem {
  const ReviewItem({
    required this.question,
    required this.dueLabel,
    required this.isOverdue,
  });

  final String question; // 문제 내용
  final String dueLabel; // "2일 지남", "오늘"
  final bool isOverdue; // 기한이 지났는지 (true면 빨간 글자)
}
