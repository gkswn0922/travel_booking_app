import 'package:flutter/material.dart';
import 'hotel_detail_screen.dart';
<<<<<<< HEAD
import 'search_input_screen.dart';
=======
import 'event_notice_screen.dart';
import 'event_benefits_screen.dart';
import 'search_input_screen.dart';
import 'search_results_screen.dart';
>>>>>>> origin/main

void main() {
  runApp(const TravelBookingApp());
}

class TravelBookingApp extends StatelessWidget {
  const TravelBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '유티스 여행 예약 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSans',
        scaffoldBackgroundColor: const Color(0xFFF7F8F9),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2; // 홈 탭이 중앙에 위치

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 상단 검색바와 아이콘들
              _buildTopSection(),
              const SizedBox(height: 16),
              
              // 프로모션 배너
              _buildPromotionBanner(),
              const SizedBox(height: 20),
              
              // 카테고리 섹션 (6개)
              _buildCategorySection(),
              const SizedBox(height: 24),
              
<<<<<<< HEAD
              // 인기 상품 섹션
              _buildPopularProductSection(),
              const SizedBox(height: 24),
              
              // 여행 후기글 섹션
              _buildTravelReviewsSection(),
=======
              // 초특가 바로가기 섹션
              _buildSpecialOffersSection(),
              const SizedBox(height: 20),
              
              // 여행지 둘러보기 섹션
              _buildDestinationSection(),
              const SizedBox(height: 20),
              
              // 추천 상품 섹션
              _buildRecommendedProducts(),
>>>>>>> origin/main
              const SizedBox(height: 100), // 하단 네비게이션 공간
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTopSection() {
    return Container(
<<<<<<< HEAD
      height: 300, // 배경 이미지를 위한 높이 설정
      decoration: const BoxDecoration(
        color: Colors.black, // 검은색 배경
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
              Colors.transparent,
            ],
          ),
        ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 200),
            child: Row(
              children: [
                // 검색바
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchInputScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Color(0xFF808080), size: 20),
                          SizedBox(width: 12),
                          Text(
                            '링톡 일본 이심 30프로 할인',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                            ),
                          ),
                        ],
=======
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchInputScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey[600]),
                    const SizedBox(width: 10),
                    Text(
                      '유니버설 스튜디오 재팬 입장권',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
>>>>>>> origin/main
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                
                // 알림 아이콘
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF808080),
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                
                // 장바구니 아이콘
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF808080),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
<<<<<<< HEAD
      ),
    );
  }

  Widget _buildPromotionBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF5736FE),
            Color(0xFF5752FE),
            Color(0xFF5771FE),
            Color(0xFF577DFE),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // 티켓 아이콘
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.confirmation_number,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          
          // 메시지 텍스트
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '띵동! 회원님을 위한 기프트 상품이 도착했어요.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '최대 10% 할인',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          
          // 화살표 아이콘
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
=======
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(Icons.notifications_outlined, color: Colors.grey[600]),
>>>>>>> origin/main
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
<<<<<<< HEAD
          _buildCategoryItem(Icons.flight, '항공'),
          _buildCategoryItem(Icons.confirmation_number, '티켓'),
          _buildCategoryItem(Icons.directions_bus, '대중교통'),
          _buildCategoryItem(Icons.directions_car, '렌터카'),
          _buildCategoryItem(Icons.hotel, '숙박'),
          _buildCategoryItem(Icons.sim_card, 'eSIM'),
=======
          _buildCategoryItem('🏨', '숙소', Colors.blue),
          _buildCategoryItem('✈️', '항공', Colors.green),
          _buildCategoryItem('🎫', '투어', Colors.orange),
          _buildCategoryItem('🚗', '렌터카', Colors.purple),
          _buildCategoryItem('🎁', '기프트', Colors.red),
>>>>>>> origin/main
        ],
      ),
    );
  }

<<<<<<< HEAD
  Widget _buildCategoryItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        if (label == '숙박') {
=======
  Widget _buildCategoryItem(String emoji, String label, Color color) {
    return GestureDetector(
      onTap: () {
        if (label == '숙소') {
>>>>>>> origin/main
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HotelDetailScreen(),
            ),
          );
        }
      },
<<<<<<< HEAD
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF577DFE),
              size: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
=======
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOffersSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF8A2BE2), Color(0xFF9932CC)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // 제목과 별 아이콘
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const SizedBox(width: 8),
              const Text(
                '초특가 바로가기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.star, color: Colors.amber, size: 20),
            ],
          ),
          const SizedBox(height: 20),
          
          // 세 개의 특가 카드
          Row(
            children: [
              Expanded(
                child: _buildSpecialOfferCard(
                  '일본 로컬',
                  '최대 100%\n할인!',
                  Colors.blue,
                  '보러가기',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventBenefitsScreen(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildSpecialOfferCard(
                  '최 주말한정',
                  '인기 일정상품\n초특가 기획!',
                  Colors.teal,
                  '보러가기',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventBenefitsScreen(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildSpecialOfferCard(
                  '전 세계',
                  '초특가 모음',
                  Colors.orange,
                  '상세보기',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventNoticeScreen(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOfferCard(String title, String description, Color color, String buttonText, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 140,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDestinationSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '여행지 둘러보기',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildDestinationCard('도쿄', '🇯🇵', Colors.red),
                _buildDestinationCard('오사카', '🏯', Colors.orange),
                _buildDestinationCard('교토', '⛩️', Colors.green),
                _buildDestinationCard('후쿠오카', '🍜', Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard(String name, String emoji, Color color) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          Text(
            name,
>>>>>>> origin/main
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }

Widget _buildPopularProductSection() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '인기 상품',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 16),
        
        // 상품 카드
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              // 상품 이미지 영역 (더 큰 크기)
              Container(
                width: double.infinity,
                height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
              ),
              
              // 상품 정보 영역
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 위치 정보
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color(0xFF666666),
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '오사카',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    
                    // 상품명
                    const Text(
                      'JR 하루카 간사이 공항 특급 열차 티켓',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333),
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    
                    // 가격과 할인 정보
                    Row(
                      children: [
                        const Text(
                          '₩ 11,300~',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5333F),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            'KRW 1,000원 할인',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

  Widget _buildTravelReviewsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '여행 후기글',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              Text(
                '더보기 >',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF577DFE),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          // 2x2 그리드
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    _buildReviewCard(
                      '2025년 여름, 꼭 방문해야하는런던 뷰 맛집 패키지 여행',
                      'sdaks023',
                      '1,549',
                      const Color(0xFF577DFE),
                    ),
                    const SizedBox(height: 12),
                    _buildReviewCard(
                      '분위기까지, 날씨까지 완벽했던 일본 오사카 여행기',
                      'ilskd456',
                      '679',
                      const Color(0xFF577DFE),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: [
                    _buildReviewCard(
                      '2025년 여름, 꼭 방문해야하는런던 뷰 맛집 패키지 여행',
                      'sdaks023',
                      '1,549',
                      const Color(0xFF577DFE),
                    ),
                    const SizedBox(height: 12),
                    _buildReviewCard(
                      '분위기까지, 날씨까지 완벽했던 일본 오사카 여행기',
                      'ilskd456',
                      '679',
                      const Color(0xFF577DFE),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 546번째 줄부터의 _buildReviewCard 함수를 다음과 같이 교체하세요:

Widget _buildReviewCard(String title, String username, String likes, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지 영역 - 강변 도시 일몰 풍경
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
<<<<<<< HEAD
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // 하트 아이콘
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Color(0xFFF5333F),
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // 텍스트 정보
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 제목
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                  height: 1.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              
              // 사용자명과 좋아요
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF666666),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFFF5333F),
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        likes,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF666666),
                          fontWeight: FontWeight.w500,
=======
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.white, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          location,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
>>>>>>> origin/main
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFE0E0E0), width: 1),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF577DFE),
        unselectedItemColor: const Color(0xFF666666),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            activeIcon: Icon(Icons.local_offer),
            label: '투어&티켓',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedIndex == 2 ? const Color(0xFF577DFE) : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.home,
                color: _selectedIndex == 2 ? Colors.white : const Color(0xFF666666),
              ),
            ),
            activeIcon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF577DFE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            label: '홈',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.store),
            label: '마켓',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
      ),
    );
<<<<<<< HEAD
  }}
=======
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = '일본 숙소 특가';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: '검색어를 입력하세요',
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
            style: const TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mic, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 검색어 추천 섹션
            _buildSearchSuggestions(),
            const SizedBox(height: 20),
            
            // 인기 여행 섹션
            _buildPopularTravelSection(),
            const SizedBox(height: 20),
            
            // 지금, 근처에서 할 수 있는 것 섹션
            _buildNearbyActivitiesSection(),
            const SizedBox(height: 20),
            
            // 인기 여행지 섹션
            _buildPopularDestinationsSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '검색어 추천',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildSuggestionChip('일본 여행'),
              _buildSuggestionChip('도쿄 호텔'),
              _buildSuggestionChip('오사카 투어'),
              _buildSuggestionChip('교토 온천'),
              _buildSuggestionChip('후쿠오카 맛집'),
              _buildSuggestionChip('삿포로 스키'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionChip(String text) {
    return GestureDetector(
      onTap: () {
        _searchController.text = text;
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildPopularTravelSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '인기 여행',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTravelCard('도쿄 디즈니랜드', '₩ 89,000 부터', Colors.pink),
                _buildTravelCard('후지산 투어', '₩ 45,000 부터', Colors.blue),
                _buildTravelCard('오사카 유니버설', '₩ 78,000 부터', Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTravelCard(String title, String price, Color color) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNearbyActivitiesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '지금, 근처에서 할 수 있는 것',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.5,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              final activities = [
                {'name': '맛집 투어', 'icon': '🍜', 'color': Colors.orange},
                {'name': '카페 탐방', 'icon': '☕', 'color': Colors.brown},
                {'name': '쇼핑몰', 'icon': '🛍️', 'color': Colors.purple},
                {'name': '관광지', 'icon': '🏛️', 'color': Colors.blue},
              ];
              final activity = activities[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: (activity['color'] as Color).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          activity['icon'] as String,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        activity['name'] as String,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPopularDestinationsSection() {
    final destinations = [
      {
        'name': '도쿄',
        'hotelData': {
          'title': 'Tokyo Station Hotel',
          'subtitle': '도쿄역 바로 앞 럭셔리 호텔',
          'color': const Color(0xFF3B82F6),
          'image': '🏨',
        }
      },
      {
        'name': '오사카',
        'hotelData': {
          'title': 'Osaka Castle Hotel',
          'subtitle': '오사카성 전망 최고의 호텔',
          'color': const Color(0xFFDC2626),
          'image': '🏰',
        }
      },
      {
        'name': '교토',
        'hotelData': {
          'title': 'Kyoto Traditional Inn',
          'subtitle': '전통 한옥 스타일 게스트하우스',
          'color': const Color(0xFF059669),
          'image': '🏮',
        }
      },
      {
        'name': '후쿠오카',
        'hotelData': {
          'title': 'Fukuoka Bay Hotel',
          'subtitle': '하카타만 전망의 리조트 호텔',
          'color': const Color(0xFF7C3AED),
          'image': '🌊',
        }
      },
      {
        'name': '삿포로',
        'hotelData': {
          'title': 'Sapporo Snow Hotel',
          'subtitle': '눈꽃 전망 최고의 호텔',
          'color': const Color(0xFF0891B2),
          'image': '❄️',
        }
      },
      {
        'name': '나고야',
        'hotelData': {
          'title': 'Nagoya Business Hotel',
          'subtitle': '비즈니스 여행 최적의 호텔',
          'color': const Color(0xFFEA580C),
          'image': '🏢',
        }
      },
      {
        'name': '요코하마',
        'hotelData': {
          'title': 'Yokohama Port Hotel',
          'subtitle': '요코하마항 전망의 호텔',
          'color': const Color(0xFFBE185D),
          'image': '🚢',
        }
      },
      {
        'name': '고베',
        'hotelData': {
          'title': 'Kobe Harbor Hotel',
          'subtitle': '고베항 야경이 아름다운 호텔',
          'color': const Color(0xFF059669),
          'image': '🌃',
        }
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '인기 여행지',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2,
            ),
            itemCount: destinations.length,
            itemBuilder: (context, index) {
              final destination = destinations[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HotelDetailScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      destination['name'] as String,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
>>>>>>> origin/main
