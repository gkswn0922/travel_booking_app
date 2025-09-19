import 'package:flutter/material.dart';
import 'hotel_detail_screen.dart';
import 'search_input_screen.dart';

void main() {
  runApp(const TravelBookingApp());
}

class TravelBookingApp extends StatelessWidget {
  const TravelBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '유티스 여행 예약 앱 test',
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
              _buildSearchSection(),
              const SizedBox(height: 6),
              
              // 프로모션 배너
              _buildPromotionBanner(),
              const SizedBox(height: 16),
              
              // 작은 프로모션 배너
              _buildSmallPromotionBanner(),
              const SizedBox(height: 24),
              
              // 카테고리 섹션 (6개)
              _buildCategorySection(),
              const SizedBox(height: 24),
              
              // 인기 상품 섹션
              _buildPopularProductSection(),
              const SizedBox(height: 24),
              
              // 여행 후기글 섹션
              _buildTravelReviewsSection(),
              const SizedBox(height: 100), // 하단 네비게이션 공간
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          const SizedBox(width: 5),
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
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF999999), size: 20),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        '링톡 일본 이심 30% 할인',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          
          // 알림 아이콘
          const Icon(
            Icons.notifications_outlined,
            color: Color(0xFF666666),
            size: 24,
          ),
          const SizedBox(width: 8),
          
          // 장바구니 아이콘
          const Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xFF666666),
            size: 24,
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: AspectRatio(
        aspectRatio: 5/4, // 5:4 비율
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                  Colors.transparent,
                ],
              ),
            ),
            child: Stack(
              children: [
                // 상단 텍스트
                Positioned(
                  top: 20,
                  left: 20,
                  child: const Text(
                    '링톡 & 유티스',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                // 하단 버튼
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Text(
                        '특가 확인하기',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                
                // 우하단 5G eSIM 배지
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF007AFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '5G',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF007AFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'eSIM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSmallPromotionBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
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
          // 티켓 아이콘들
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.confirmation_number,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Positioned(
                left: 6,
                top: 3,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.confirmation_number,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          
          // 메시지 텍스트
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '띵동!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  '회원님을 위한 기프트 상품이 도착했어요.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 0),
                Text(
                  '최대 10% 할인',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
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
          _buildCategoryItem(Icons.flight, '항공'),
          _buildCategoryItem(Icons.confirmation_number, '티켓'),
          _buildCategoryItem(Icons.directions_bus, '대중교통'),
          _buildCategoryItem(Icons.directions_car, '렌터카'),
          _buildCategoryItem(Icons.hotel, '숙박'),
          _buildCategoryItem(Icons.sim_card, 'eSIM'),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        if (label == '숙박') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HotelDetailScreen(),
            ),
          );
        }
      },
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
                        ),
                      ),
                    ],
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
  }}
