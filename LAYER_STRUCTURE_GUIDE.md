# 피그마 레이어 구조 가이드

## 📁 파일 정보
- **파일명**: `travel_booking_app_structured.svg`
- **구조**: 명확한 부모-자식 관계
- **레이어**: 논리적 그룹화

## 🏗️ 레이어 구조 (부모 → 자식)

### 1. **main-container** (최상위 컨테이너)
```
main-container
├── background
├── top-bar-section
├── category-section
├── main-banner-section
├── welcome-gift-section
├── destination-section
├── recommended-products-section
└── bottom-navigation-section
```

### 2. **top-bar-section** (상단 바)
```
top-bar-section
├── search-container
│   ├── search-background
│   └── search-content
│       ├── search-icon
│       └── search-text
└── top-icons
    ├── cart-icon
    └── notification-icon
```

### 3. **category-section** (카테고리 섹션)
```
category-section
└── category-grid
    ├── category-tour
    │   ├── tour-background
    │   ├── tour-icon
    │   └── tour-label
    ├── category-transport
    │   ├── transport-background
    │   ├── transport-icon
    │   └── transport-label
    ├── category-car
    │   ├── car-background
    │   ├── car-icon
    │   └── car-label
    ├── category-hotel
    │   ├── hotel-background
    │   ├── hotel-icon
    │   └── hotel-label
    ├── category-esim
    │   ├── esim-background
    │   ├── esim-icon
    │   └── esim-label
    └── category-all
        ├── all-background
        ├── all-icon
        └── all-label
```

### 4. **main-banner-section** (메인 배너)
```
main-banner-section
├── banner-background
├── banner-header
│   ├── star-left
│   ├── banner-title
│   └── star-right
└── banner-cards
    ├── banner-card-japan
    │   ├── japan-card-background
    │   └── japan-card-content
    │       ├── japan-title-1
    │       ├── japan-title-2
    │       ├── japan-title-3
    │       ├── japan-button
    │       └── japan-button-text
    ├── banner-card-weekend
    │   ├── weekend-card-background
    │   └── weekend-card-content
    │       ├── weekend-title-1
    │       ├── weekend-title-2
    │       ├── weekend-title-3
    │       ├── weekend-button
    │       └── weekend-button-text
    └── banner-card-global
        ├── global-card-background
        └── global-card-content
            ├── global-title-1
            ├── global-title-2
            ├── global-button
            └── global-button-text
```

### 5. **welcome-gift-section** (웰컴 기프트)
```
welcome-gift-section
├── gift-background
└── gift-content
    ├── gift-icon-container
    │   ├── gift-icon-background
    │   └── gift-icon
    ├── gift-text-content
    │   ├── gift-title
    │   └── gift-subtitle
    └── gift-button-container
        ├── gift-button
        └── gift-button-text
```

### 6. **destination-section** (여행지 섹션)
```
destination-section
├── destination-header
│   ├── destination-title
│   └── destination-more
└── destination-cards
    ├── destination-singapore
    │   ├── singapore-avatar
    │   │   ├── singapore-background
    │   │   ├── singapore-icon-bg
    │   │   └── singapore-icon
    │   └── singapore-label
    ├── destination-tokyo
    │   ├── tokyo-avatar
    │   │   ├── tokyo-background
    │   │   ├── tokyo-icon-bg
    │   │   └── tokyo-icon
    │   └── tokyo-label
    └── destination-danang
        ├── danang-avatar
        │   ├── danang-background
        │   ├── danang-icon-bg
        │   └── danang-icon
        └── danang-label
```

### 7. **recommended-products-section** (추천 상품)
```
recommended-products-section
├── products-header
│   ├── products-title
│   └── products-subtitle
└── product-cards
    ├── product-card-jr
    │   ├── jr-card-background
    │   ├── jr-card-image
    │   │   ├── jr-image-background
    │   │   └── jr-location
    │   │       ├── jr-location-icon-bg
    │   │       ├── jr-location-icon
    │   │       └── jr-location-text
    │   └── jr-card-content
    │       ├── jr-title-1
    │       ├── jr-title-2
    │       └── jr-price
    └── product-card-ferry
        ├── ferry-card-background
        ├── ferry-card-image
        │   ├── ferry-image-background
        │   └── ferry-location
        │       ├── ferry-location-icon-bg
        │       ├── ferry-location-icon
        │       └── ferry-location-text
        └── ferry-card-content
            ├── ferry-title-1
            ├── ferry-title-2
            └── ferry-price-container
                ├── ferry-price
                └── ferry-discount-tag
                    ├── discount-background
                    └── discount-text
```

### 8. **bottom-navigation-section** (하단 네비게이션)
```
bottom-navigation-section
├── nav-background
├── nav-border
└── nav-items
    ├── nav-home
    │   ├── home-background
    │   ├── home-icon
    │   └── home-label
    ├── nav-booking
    │   ├── booking-icon
    │   └── booking-label
    ├── nav-deals
    │   ├── deals-icon
    │   └── deals-label
    ├── nav-travel
    │   ├── travel-icon
    │   └── travel-label
    └── nav-profile
        ├── profile-icon
        └── profile-label
```

## 🎯 피그마에서의 활용

### 1. **컴포넌트 생성**
- 각 섹션을 개별 컴포넌트로 변환
- 재사용 가능한 요소들 분리

### 2. **레이어 관리**
- 명확한 ID로 레이어 식별
- 부모-자식 관계로 그룹화
- 논리적 순서로 정렬

### 3. **편집 용이성**
- 개별 요소 선택 및 수정 가능
- 색상, 텍스트, 크기 독립적 변경
- 그룹 단위 이동 및 복사

### 4. **개발자 협업**
- 명확한 네이밍 컨벤션
- 구조화된 레이어 정보
- 컴포넌트 기반 디자인 시스템

## 📋 체크리스트

- [ ] SVG 파일 가져오기
- [ ] 레이어 구조 확인
- [ ] 컴포넌트 분리
- [ ] 색상 변수 설정
- [ ] 텍스트 스타일 정의
- [ ] 반응형 설정
- [ ] 개발자 핸드오프 준비

## 💡 추가 팁

1. **마스터 컴포넌트**: 각 섹션을 마스터 컴포넌트로 만들어 일관성 유지
2. **변수 사용**: 색상과 텍스트를 변수로 설정하여 테마 변경 용이
3. **프로토타이핑**: 상호작용을 위한 프로토타입 연결
4. **개발자 모드**: 개발자와의 협업을 위한 주석과 명명 규칙 준수
