import 'package:flutter/material.dart';
import 'search_results_screen.dart';

class SearchInputScreen extends StatefulWidget {
  const SearchInputScreen({Key? key}) : super(key: key);

  @override
  State<SearchInputScreen> createState() => _SearchInputScreenState();
}

class _SearchInputScreenState extends State<SearchInputScreen> {
  final TextEditingController _searchController = TextEditingController(text: '일본 숙소 특가');

  void _performSearch(String query) {
    if (query.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SearchResultsScreen(searchQuery: query),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 상단 상태바와 검색바
            _buildTopSection(),
            // 메인 콘텐츠
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRecommendedSearchTerms(),
                    const SizedBox(height: 20),
                    _buildPopularDestinationsSection(),
                    const SizedBox(height: 20),
                    _buildPopularTravelSection(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: '일본 숙소 특가',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                onSubmitted: _performSearch,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget _buildRecommendedSearchTerms() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '최근 검색어',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSearchTermChip('일본 숙소 특가'),
                const SizedBox(width: 8),
                _buildSearchTermChip('인기 지역 숙소 특가 진행 중'),
                const SizedBox(width: 8),
                _buildSearchTermChip('도쿄 호텔 할인'),
                const SizedBox(width: 8),
                _buildSearchTermChip('오사카 여행 패키지'),
                const SizedBox(width: 8),
                _buildSearchTermChip('후쿠오카 특가 항공권'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchTermChip(String text) {
    return GestureDetector(
      onTap: () => _performSearch(text),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
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
            '추천 상품',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTravelCard(
                  '대만 eSIM 특가',
                  const Color(0xFF4A90E2),
                  Icons.sim_card,
                ),
                const SizedBox(width: 12),
                _buildTravelCard(
                  '일본 여행 패키지',
                  const Color(0xFF059669),
                  Icons.flight_takeoff,
                ),
                const SizedBox(width: 12),
                _buildTravelCard(
                  '유럽 호텔 할인',
                  const Color(0xFF7C3AED),
                  Icons.hotel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTravelCard(String title, Color color, IconData icon, {String? imageUrl}) {
    return GestureDetector(
      onTap: () => _performSearch(title),
        child: Container(
          width: 200,
          height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 상단 이미지 영역 (일본 벚꽃 풍경 테마)
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // 로컬 assets 이미지 사용
                      Image.asset(
                        'image.png',
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
                    // 하단 텍스트 영역 (오버플로우 수정)
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8), // 상하 패딩 줄임
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 제품명
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 13, // 폰트 크기 약간 줄임
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF374151),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4), // 간격 줄임
                        // 가격
                        Text(
                          '3,500원',
                          style: const TextStyle(
                            fontSize: 15, // 폰트 크기 약간 줄임
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),
                    // 하단 행: 평점/리뷰 + 회사명
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 평점과 리뷰
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 14, // 아이콘 크기 줄임
                            ),
                            const SizedBox(width: 3),
                            Text(
                              '4.34(76)',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 11, // 폰트 크기 줄임
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        // 회사명과 화살표
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '주식회사 링톡',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11, // 폰트 크기 줄임
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 3),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey[600],
                                size: 10, // 아이콘 크기 줄임
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTechBadge(String text, Color textColor, Color backgroundColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildNearbyActivitiesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.flight_takeoff, size: 20, color: Colors.grey[600]),
              const SizedBox(width: 8),
              const Text(
                '지금, 근처에서 할 수 있는 것',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildActivityCard(
                  '광고',
                  const Color(0xFF8B5CF6),
                  const Color(0xFF10B981),
                ),
                const SizedBox(width: 12),
                _buildEmptyActivityCard(),
                const SizedBox(width: 12),
                _buildEmptyActivityCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(String label, Color color1, Color color2) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyActivityCard() {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Center(
        child: Text(
          '2/47',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildPopularDestinationsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '인기 검색어',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildSearchTermChip('일본 숙소 특가'),
              _buildSearchTermChip('인기 지역 숙소 특가 진행 중'),
              _buildSearchTermChip('도쿄 호텔 할인'),
              _buildSearchTermChip('오사카 여행 패키지'),
              _buildSearchTermChip('후쿠오카 특가 항공권'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationButton(String destination) {
    return GestureDetector(
      onTap: () => _performSearch(destination),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Center(
          child: Text(
            destination,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}