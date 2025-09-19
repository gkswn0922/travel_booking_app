import 'package:flutter/material.dart';
import 'main.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // GIF 재생 후 메인 화면으로 이동
    _navigateToMain();
  }

  void _navigateToMain() {
    // GIF가 한 번 재생된 후 메인 화면으로 이동
    // 일반적으로 GIF는 3-5초 정도 재생됩니다
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GIF 이미지
            SizedBox(
              width: 300,   // 최종적으로 보여줄 영역
              height: 650,
              child: ClipRect(
                child: OverflowBox(
                  alignment: Alignment.center,
                  minWidth: 100,
                  minHeight: 100,
                  maxWidth: double.infinity,
                  maxHeight: 1000,
                  child: Image.asset(
                    'assets/loading.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
