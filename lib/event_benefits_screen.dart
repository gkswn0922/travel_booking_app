import 'package:flutter/material.dart';

class EventBenefitsScreen extends StatefulWidget {
  const EventBenefitsScreen({Key? key}) : super(key: key);

  @override
  State<EventBenefitsScreen> createState() => _EventBenefitsScreenState();
}

class _EventBenefitsScreenState extends State<EventBenefitsScreen> {
  final List<EventBenefit> _benefits = [
    EventBenefit(
      title: '🎉 신규 회원 50% 할인',
      description: '첫 예약 시 최대 50% 할인 혜택',
      discount: '50%',
      period: '2024.09.17 ~ 2024.10.17',
      color: Colors.purple,
      isActive: true,
    ),
    EventBenefit(
      title: '✈️ 일본 로컬 투어 특가',
      description: '일본 현지 투어 최대 100% 할인',
      discount: '100%',
      period: '2024.09.15 ~ 2024.09.30',
      color: Colors.blue,
      isActive: true,
    ),
    EventBenefit(
      title: '🏨 주말 한정 호텔 특가',
      description: '주말 숙박 인기 상품 초특가',
      discount: '70%',
      period: '2024.09.20 ~ 2024.09.22',
      color: Colors.teal,
      isActive: true,
    ),
    EventBenefit(
      title: '🎁 추석 연휴 패키지',
      description: '가족 여행 패키지 30% 할인',
      discount: '30%',
      period: '2024.09.12 ~ 2024.09.18',
      color: Colors.orange,
      isActive: false,
    ),
    EventBenefit(
      title: '🌍 전 세계 초특가',
      description: '유럽, 아시아, 아메리카 할인',
      discount: '60%',
      period: '2024.09.10 ~ 2024.10.10',
      color: Colors.green,
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('이벤트 혜택'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              _showFilterDialog();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 상단 배너
          _buildTopBanner(),
          
          // 진행 중인 이벤트 탭
          _buildEventTabs(),
          
          // 혜택 리스트
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _benefits.length,
              itemBuilder: (context, index) {
                return _buildBenefitCard(_benefits[index]);
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
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '🎁 특별 혜택',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '지금 진행 중인\n특별 할인 혜택을 확인하세요!',
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
                    '혜택 받기',
                    style: TextStyle(
                      color: Color(0xFF8A2BE2),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.card_giftcard,
            color: Colors.white,
            size: 60,
          ),
        ],
      ),
    );
  }

  Widget _buildEventTabs() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: _buildTabButton('진행중', true),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _buildTabButton('종료', false),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildBenefitCard(EventBenefit benefit) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          _showBenefitDetail(benefit);
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            // 상단 할인 정보
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    benefit.color,
                    benefit.color.withOpacity(0.8),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          benefit.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          benefit.description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          benefit.discount,
                          style: TextStyle(
                            color: benefit.color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: benefit.isActive ? Colors.green : Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          benefit.isActive ? '진행중' : '종료',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // 하단 상세 정보
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.grey[600],
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        benefit.period,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '자세히 보기',
                        style: TextStyle(
                          color: benefit.color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: benefit.color,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: benefit.isActive ? () {
                        _applyBenefit(benefit);
                      } : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: benefit.color,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        benefit.isActive ? '혜택 받기' : '종료된 혜택',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('필터 옵션'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('진행중인 혜택'),
              trailing: Radio(
                value: 'active',
                groupValue: 'active',
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text('종료된 혜택'),
              trailing: Radio(
                value: 'inactive',
                groupValue: 'active',
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text('전체'),
              trailing: Radio(
                value: 'all',
                groupValue: 'active',
                onChanged: (value) {},
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('적용'),
          ),
        ],
      ),
    );
  }

  void _showBenefitDetail(EventBenefit benefit) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(benefit.title),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: benefit.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      benefit.discount,
                      style: TextStyle(
                        color: benefit.color,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '할인 혜택',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                benefit.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    Icons.schedule,
                    color: Colors.grey[600],
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    benefit.period,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('닫기'),
          ),
          if (benefit.isActive)
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _applyBenefit(benefit);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: benefit.color,
                foregroundColor: Colors.white,
              ),
              child: const Text('혜택 받기'),
            ),
        ],
      ),
    );
  }

  void _applyBenefit(EventBenefit benefit) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${benefit.title} 혜택이 적용되었습니다!'),
        backgroundColor: benefit.color,
        action: SnackBarAction(
          label: '확인',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}

class EventBenefit {
  final String title;
  final String description;
  final String discount;
  final String period;
  final Color color;
  final bool isActive;

  EventBenefit({
    required this.title,
    required this.description,
    required this.discount,
    required this.period,
    required this.color,
    required this.isActive,
  });
}
