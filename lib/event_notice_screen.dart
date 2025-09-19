import 'package:flutter/material.dart';

class EventNoticeScreen extends StatefulWidget {
  const EventNoticeScreen({Key? key}) : super(key: key);

  @override
  State<EventNoticeScreen> createState() => _EventNoticeScreenState();
}

class _EventNoticeScreenState extends State<EventNoticeScreen> {
  final List<EventNotice> _notices = [
    EventNotice(
      title: '🎉 신규 회원 50% 할인 이벤트',
      content: '신규 회원을 위한 특별 할인 이벤트가 시작되었습니다!\n첫 예약 시 최대 50% 할인 혜택을 받아보세요.',
      date: '2024.09.17',
      isNew: true,
      category: '이벤트',
    ),
    EventNotice(
      title: '✈️ 일본 여행 패키지 특가',
      content: '도쿄, 오사카, 교토 3박 4일 패키지가 특가로 출시되었습니다.\n항공료, 숙박, 투어까지 모두 포함된 완전 패키지입니다.',
      date: '2024.09.15',
      isNew: false,
      category: '패키지',
    ),
    EventNotice(
      title: '🏨 호텔 예약 시스템 점검 안내',
      content: '더 나은 서비스 제공을 위해 호텔 예약 시스템 점검을 진행합니다.\n점검 시간: 2024년 9월 20일 02:00 ~ 06:00',
      date: '2024.09.14',
      isNew: false,
      category: '공지',
    ),
    EventNotice(
      title: '🎁 추석 연휴 특별 혜택',
      content: '추석 연휴를 맞아 특별 혜택을 준비했습니다.\n가족 여행 패키지 30% 할인 및 추가 혜택을 확인해보세요.',
      date: '2024.09.12',
      isNew: false,
      category: '이벤트',
    ),
    EventNotice(
      title: '🌍 전 세계 초특가 모음',
      content: '전 세계 인기 여행지의 초특가 상품들을 모았습니다.\n유럽, 아시아, 아메리카 등 다양한 지역의 할인 상품을 만나보세요.',
      date: '2024.09.10',
      isNew: true,
      category: '특가',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('이벤트 공지사항'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _showSearchDialog();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 상단 배너
          _buildTopBanner(),
          
          // 필터 탭
          _buildFilterTabs(),
          
          // 공지사항 리스트
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _notices.length,
              itemBuilder: (context, index) {
                return _buildNoticeCard(_notices[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBanner() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF667eea), Color(0xFF764ba2)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '🎉 특별 이벤트',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '신규 회원 50% 할인\n지금 바로 확인하세요!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '자세히 보기',
                    style: TextStyle(
                      color: Color(0xFF667eea),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.celebration,
            color: Colors.white,
            size: 60,
          ),
        ],
      ),
    );
  }

  Widget _buildFilterTabs() {
    final categories = ['전체', '이벤트', '공지', '패키지', '특가'];
    
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(categories[index]),
              selected: index == 0,
              onSelected: (selected) {
                // 필터 로직 구현
              },
              selectedColor: Colors.blue[100],
              checkmarkColor: Colors.blue,
            ),
          );
        },
      ),
    );
  }

  Widget _buildNoticeCard(EventNotice notice) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
      child: InkWell(
        onTap: () {
          _showNoticeDetail(notice);
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(notice.category),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      notice.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (notice.isNew) ...[
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                  const Spacer(),
                  Text(
                    notice.date,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                notice.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                notice.content,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.4,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.visibility,
                    color: Colors.grey[400],
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '자세히 보기',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[400],
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case '이벤트':
        return Colors.purple;
      case '공지':
        return Colors.blue;
      case '패키지':
        return Colors.green;
      case '특가':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('공지사항 검색'),
        content: const TextField(
          decoration: InputDecoration(
            hintText: '검색어를 입력하세요',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('검색'),
          ),
        ],
      ),
    );
  }

  void _showNoticeDetail(EventNotice notice) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(notice.title),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(notice.category),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      notice.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    notice.date,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                notice.content,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('닫기'),
          ),
        ],
      ),
    );
  }
}

class EventNotice {
  final String title;
  final String content;
  final String date;
  final bool isNew;
  final String category;

  EventNotice({
    required this.title,
    required this.content,
    required this.date,
    required this.isNew,
    required this.category,
  });
}
<<<<<<< HEAD

=======
>>>>>>> origin/main
