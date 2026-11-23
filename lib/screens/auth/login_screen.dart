import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/primary_button.dart';
import '../main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    // TODO(백엔드): Supabase 로그인 연결 (_idController.text, _passwordController.text)
    // 지금은 서버 없이 바로 메인 화면으로 이동
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // 키보드가 올라와도 화면을 줄이지 않음
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // 노란 아래 영역 + 입력 폼
            Positioned.fill(
              top: 243,
              child: Container(
                padding: const EdgeInsets.fromLTRB(28, 57, 28, 40),
                decoration: const BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('아이디 또는 이메일', style: AppTextStyles.body),
                    const SizedBox(height: 8),
                    AppTextField(
                      hint: 'hama123 또는 hama@email.com',
                      controller: _idController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 18),
                    const Text('비밀번호', style: AppTextStyles.body),
                    const SizedBox(height: 8),
                    AppTextField(
                      hint: '비밀번호를 입력해 주세요',
                      controller: _passwordController,
                      obscureText: true,
                    ),
                    const Spacer(),
                    PrimaryButton(text: '로그인', onPressed: _login),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // TODO: 회원가입 화면으로 이동
                          },
                          child: const Text('회원가입', style: AppTextStyles.link),
                        ),
                        Container(
                          width: 1,
                          height: 12,
                          margin: const EdgeInsets.symmetric(horizontal: 14),
                          color: AppColors.divider,
                        ),
                        GestureDetector(
                          onTap: () {
                            // TODO: 비밀번호 찾기 화면으로 이동
                          },
                          child: const Text(
                            '비밀번호 찾기',
                            style: AppTextStyles.link,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 왼쪽 위 로고
            Positioned(
              top: 12,
              left: 20,
              child: Text(
                '똑똑하마',
                style: AppTextStyles.headline.copyWith(color: AppColors.blue),
              ),
            ),
            // 말풍선
            const Positioned(
              top: 104,
              left: 28,
              child: _SpeechBubble('로그인 오네가이시마스!'),
            ),
            // TODO(이미지): 하마 이미지로 교체
            Positioned(
              top: 104,
              right: 36,
              child: Image.asset(
                'assets/images/hama_bow.png',
                width: 135,
                height: 167,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 하마 옆 말풍선
class _SpeechBubble extends StatelessWidget {
  const _SpeechBubble(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(4), // 꼬리 쪽만 덜 둥글게
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x141E2A38),
            blurRadius: 8,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        text,
        style: AppTextStyles.body.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
