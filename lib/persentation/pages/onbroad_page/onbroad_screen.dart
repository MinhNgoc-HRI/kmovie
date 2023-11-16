import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnbroadScreen extends StatefulWidget {
  const OnbroadScreen({Key? key}) : super(key: key);

  @override
  State<OnbroadScreen> createState() => _OnbroadScreenState();
}

class _OnbroadScreenState extends State<OnbroadScreen> {
  final List<String> _images = [
    'lib/assets/images/splash_1.png',
    'lib/assets/images/splash_2.png',
    'lib/assets/images/splash_3.png',
  ];
  final List<String> _title = [
    'Xem hàng triệu video đặc sắc hấp dẫn',
    'Phát sóng trực tiếp các sự kiện giải trí hot',
    'Đăng tải và chia sẻ video mọi lúc mọi nơi'
  ];
  final List<String> _desc = [
    'Đa dạng chủ đề Nhạc, Phim, TVShow, Tin Tức, Sao',
    'Hội tụ top streamers, KOLs và giải đấu Esport đỉnh cao',
    'Dễ dàng lưu trữ và chia sẻ video với bạn bè'
  ];
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildDot(bool isSelected) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isSelected ? 20.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFFFFFFFF)
            : const Color.fromARGB(40, 255, 255, 255),
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }

  Widget _buildTitle(bool isSelected, String title, String description) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isSelected ? 1.0 : 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(
                height: 24,
              ),
              Text(description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white))
            ]),
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10),
              backgroundColor: const Color(0xFF141414),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          onPressed: () {
            AutoRouter.of(context).navigateNamed('/login');
          },
          child: const Text(
            'Bắt đầu',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                itemCount: _images.length,
                itemBuilder: ((context, index) {
                  return Image.asset(
                    key: ValueKey(index),
                    _images[index],
                    fit: BoxFit.contain,
                  );
                })),
          ),
          const SizedBox(height: 16.0),
          Stack(
              children: List.generate(
                  _title.length,
                  (index) => _buildTitle(
                      index == _currentPage, _title[index], _desc[index]))),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _images.length,
              (index) => _buildDot(index == _currentPage),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildButton(),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}
