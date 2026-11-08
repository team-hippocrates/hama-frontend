// 문제 유형
enum QuizType {
  multipleChoice('4', '객관식', '보기 4개 중 하나를 골라요'),
  ox('OX', 'OX 퀴즈', '맞으면 O, 틀리면 X'),
  shortAnswer('가', '단답형', '정답을 직접 입력해요');

  const QuizType(this.badge, this.title, this.description);

  final String badge; // 왼쪽 네모 안 글자
  final String title; // 제목
  final String description; // 설명
}

// 난이도
enum QuizDifficulty {
  easy('하'),
  normal('중'),
  hard('상');

  const QuizDifficulty(this.label);

  final String label;
}

// TODO(백엔드): API 명세서의 유형·난이도 값 이름(예: "MULTIPLE", "EASY")과 맞추기
