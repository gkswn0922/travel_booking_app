import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final String productName;
  final String productImage;
  final String price;
  final String discount;
  
  const ProductDetailScreen({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.discount,
  }) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '상품 상세',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 상품 이미지
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.productImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // 할인 배지
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5333F),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        widget.discount,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 상품 정보
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 별점과 리뷰 점수
                  Row(
                    children: [
                      // 별점
                      Row(
                        children: List.generate(5, (index) {
                          if (index < 3) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            );
                          } else if (index == 3) {
                            return const Icon(
                              Icons.star_half,
                              color: Colors.amber,
                              size: 18,
                            );
                          } else {
                            return const Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 18,
                            );
                          }
                        }),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        '3.8',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        '(2041)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  
                  // 상품명
                  Text(
                    widget.productName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
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
                          fontSize: 14,
                          color: Color(0xFF666666),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // 가격 정보
                  Row(
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(
                          fontSize: 24,
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
                        child: Text(
                          widget.discount,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // 프로모션 혜택 안내 박스
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE0E0E0),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '프로모션 혜택 안내',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          '• 6만원 즉시 할인 (정상가) 269,000원 → 209,000',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '• 구매자 전원 100% PVC 커버 1개 추가 증정',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '• 독일산! PC 폴리카보네이트 100%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '• 미국에서 인증된 TSA 잠금 장치',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Center(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFE0E0E0),
                                width: 1,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                '더보기',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 결제 안내
                  Row(
                    children: [
                      const Text(
                        '결제 안내',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.help_outline,
                          color: Color(0xFF666666),
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '배송비',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const Text(
                        '무료',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '무이자 할부',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const Text(
                        '카드 결제 혜택',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // 사이즈 옵션
                  const Text(
                    '사이즈',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(5, (index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFE0E0E0),
                            width: 1,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'S',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF666666),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                  
                  // 색상 옵션
                  const Text(
                    '색상',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: List.generate(8, (index) {
                      return Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFE0E0E0),
                            width: 1,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '빨강',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF666666),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                  
                  // HOT 리뷰 섹션
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'HOT 리뷰',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF577DFE),
                        ),
                      ),
                      const Text(
                        '더보기 >',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // 리뷰 통계 박스
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE0E0E0),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // 왼쪽: 상품만족도
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '상품만족도',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF666666),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '4.2 / 5',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Color(0xFF577DFE),
                                        size: 16,
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        '만족해요',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF577DFE),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '305개의 리뷰 확인하기',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF666666),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            // 중간 구분선
                            Container(
                              width: 1,
                              height: 100,
                              margin: const EdgeInsets.only(left: 4),
                              color: const Color(0xFFE0E0E0),
                            ),
                            
                            // 오른쪽: 별점 분포 차트
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildRatingBar('5점', 96, true),
                                  const SizedBox(height: 4),
                                  _buildRatingBar('4점', 14, false),
                                  const SizedBox(height: 4),
                                  _buildRatingBar('3점', 7, false),
                                  const SizedBox(height: 4),
                                  _buildRatingBar('2점', 0, false),
                                  const SizedBox(height: 4),
                                  _buildRatingBar('1점', 0, false),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 리뷰 사진 박스들
                  Row(
                    children: [
                      Expanded(
                        child: _buildReviewPhotoBox(
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                          '효도여행시켜준다고 딸이 주문해준 캐리어랑 베트남여행 잘...',
                          'djskdj434',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildReviewPhotoBox(
                          'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                          '효도여행시켜준다고 딸이 주문해준 캐리어랑 베트남여행 잘...',
                          'djskdj434',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildReviewPhotoBox(
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                          '효도여행시켜준다고 딸이 주문해준 캐리어랑 베트남여행 잘...',
                          'djskdj434',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // 구분선
                  Container(
                    height: 1,
                    color: const Color(0xFFE0E0E0),
                  ),
                  const SizedBox(height: 20),
                  
                  // 상품 설명
                  const Text(
                    '상품 설명',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'JR 하루카 간사이 공항 특급 열차 티켓으로 간사이 국제공항에서 오사카, 교토, 고베 등 간사이 지역 주요 도시로 편리하게 이동할 수 있습니다. 예약 없이 바로 이용 가능하며, 자유롭게 하차할 수 있습니다.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF666666),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 구분선
                  Container(
                    height: 1,
                    color: const Color(0xFFE0E0E0),
                  ),
                  const SizedBox(height: 20),
                  
                  // 이용 안내
                  const Text(
                    '이용 안내',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoItem('이용 기간', '구매일로부터 1년간'),
                  _buildInfoItem('이용 방법', 'QR 코드로 바로 이용'),
                  _buildInfoItem('환불 정책', '이용 전까지 환불 가능'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // 하단 구매 버튼
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFE0E0E0), width: 1),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF5F7CF6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    '구매하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFF5333F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildInfoItem(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF666666),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF333333),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildRatingBar(String label, int percentage, bool isHighlighted) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF666666),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: percentage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: isHighlighted ? const Color(0xFF577DFE) : const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Expanded(
                  flex: 100 - percentage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 30,
          child: Text(
            '$percentage%',
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF666666),
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
  
  Widget _buildReviewPhotoBox(String imageUrl, String reviewText, String userId) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 사진 영역
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // 북마크 아이콘
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.bookmark_border,
                        color: Color(0xFF666666),
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // 리뷰 내용
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 별점
                Row(
                  children: List.generate(5, (index) {
                    if (index < 4) {
                      return const Icon(
                        Icons.star,
                        color: Color(0xFF577DFE),
                        size: 14,
                      );
                    } else {
                      return const Icon(
                        Icons.star_border,
                        color: Color(0xFF577DFE),
                        size: 14,
                      );
                    }
                  }),
                ),
                const SizedBox(height: 8),
                
                // 리뷰 텍스트
                Text(
                  reviewText,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF333333),
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                
                // 사용자 ID
                Text(
                  userId,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
