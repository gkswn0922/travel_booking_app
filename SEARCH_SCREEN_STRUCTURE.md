# 검색 화면 피그마 레이어 구조 가이드

## 📁 파일 정보
- **파일명**: `search_screen_figma.svg`
- **크기**: 375 x 812px (iPhone 크기)
- **용도**: 검색 화면 UI 디자인

## 🏗️ 레이어 구조 (부모 → 자식)

### 1. **search-screen-container** (최상위 컨테이너)
```
search-screen-container
├── search-background
├── search-app-bar
└── search-content
```

### 2. **search-app-bar** (상단 앱바)
```
search-app-bar
├── app-bar-background
├── app-bar-border
├── back-button
│   ├── back-button-bg
│   └── back-arrow
├── search-input-container
│   ├── search-input-bg
│   └── search-input-content
│       ├── search-icon
│       └── search-placeholder
└── voice-search-button
    ├── voice-button-bg
    └── voice-icon
```

### 3. **search-content** (메인 콘텐츠)
```
search-content
├── search-suggestions-section
├── popular-travel-section
├── nearby-activities-section
└── popular-destinations-section
```

### 4. **search-suggestions-section** (추천 검색어)
```
search-suggestions-section
├── suggestions-header
│   └── suggestions-title
└── suggestions-tags
    ├── tag-japan
    │   ├── japan-tag-bg
    │   └── japan-tag-text
    ├── tag-popular
    │   ├── popular-tag-bg
    │   └── popular-tag-text
    ├── tag-tokyo
    │   ├── tokyo-tag-bg
    │   └── tokyo-tag-text
    ├── tag-osaka
    │   ├── osaka-tag-bg
    │   └── osaka-tag-text
    └── tag-fukuoka
        ├── fukuoka-tag-bg
        └── fukuoka-tag-text
```

### 5. **popular-travel-section** (인기 여행)
```
popular-travel-section
├── travel-header
│   └── travel-title
└── travel-cards
    ├── korean-air-card
    │   ├── korean-air-bg
    │   └── korean-air-content
    │       ├── korean-air-icon
    │       ├── korean-air-title
    │       └── korean-air-subtitle
    ├── phoenix-card
    │   ├── phoenix-bg
    │   └── phoenix-content
    │       ├── phoenix-icon
    │       ├── phoenix-title
    │       └── phoenix-subtitle
    └── czech-card
        ├── czech-bg
        └── czech-content
            ├── czech-icon
            ├── czech-title
            └── czech-subtitle
```

### 6. **nearby-activities-section** (근처 활동)
```
nearby-activities-section
├── nearby-header
│   └── nearby-title
└── nearby-cards
    ├── ad-card
    │   ├── ad-bg
    │   └── ad-text
    ├── page-card-1
    │   ├── page1-bg
    │   └── page1-text
    ├── page-card-2
    │   ├── page2-bg
    │   └── page2-text
    ├── page-card-3
    │   ├── page3-bg
    │   └── page3-text
    └── page-card-4
        ├── page4-bg
        └── page4-text
```

### 7. **popular-destinations-section** (인기 여행지)
```
popular-destinations-section
├── destinations-header
│   └── destinations-title
└── destinations-grid
    ├── destinations-row-1
    │   ├── destination-paris
    │   │   ├── paris-bg
    │   │   └── paris-text
    │   ├── destination-rome
    │   │   ├── rome-bg
    │   │   └── rome-text
    │   ├── destination-osaka
    │   │   ├── osaka-bg
    │   │   └── osaka-text
    │   └── destination-barcelona
    │       ├── barcelona-bg
    │       └── barcelona-text
    └── destinations-row-2
        ├── destination-london
        │   ├── london-bg
        │   └── london-text
        ├── destination-tokyo
        │   ├── tokyo-bg
        │   └── tokyo-text
        ├── destination-bangkok
        │   ├── bangkok-bg
        │   └── bangkok-text
        └── destination-danang
            ├── danang-bg
            └── danang-text
```

## 🎨 디자인 시스템

### 색상 팔레트
```css
Primary Colors:
- Korean Air Blue: #1E3A8A → #1E40AF
- Phoenix Green: #059669 → #10B981  
- Czech Red: #7C2D12 → #DC2626

Neutral Colors:
- Background: #FFFFFF
- Text Primary: #000000
- Text Secondary: #374151
- Text Tertiary: #6B7280
- Border: #E5E7EB
- Card Background: #F3F4F6
- Placeholder: #9CA3AF
```

### 타이포그래피
- **폰트**: Inter, sans-serif
- **크기**: 12px ~ 18px
- **굵기**: 400 (Regular), 500 (Medium), 700 (Bold)

### 간격 시스템
- **기본 단위**: 8px
- **섹션 간격**: 20px
- **카드 간격**: 12px
- **패딩**: 16px (기본), 12px (작은 요소)

## 📱 컴포넌트 구조

### 1. **상단 앱바** (App Bar)
- 뒤로가기 버튼
- 검색 입력창
- 음성 검색 버튼

### 2. **추천 검색어** (Search Suggestions)
- 태그 형태의 검색어 버튼들
- 클릭 가능한 인터랙션

### 3. **인기 여행 카드** (Travel Cards)
- 그라디언트 배경
- 이모지 아이콘
- 제목과 부제목

### 4. **근처 활동** (Nearby Activities)
- 수평 스크롤 카드들
- 광고 및 페이지 표시

### 5. **여행지 그리드** (Destinations Grid)
- 4x2 그리드 레이아웃
- 도시명 버튼들

## 🔧 피그마에서의 활용

### 1. **컴포넌트 생성**
- 각 섹션을 개별 컴포넌트로 변환
- 재사용 가능한 카드 컴포넌트 생성

### 2. **변수 설정**
- 색상 변수로 테마 변경 용이
- 텍스트 스타일 변수 설정

### 3. **프로토타이핑**
- 검색어 태그 클릭 인터랙션
- 여행지 버튼 클릭 인터랙션

### 4. **반응형 설정**
- Auto Layout으로 반응형 구현
- 다양한 화면 크기 대응

## 📋 체크리스트

- [ ] SVG 파일 가져오기 완료
- [ ] 레이어 구조 확인
- [ ] 컴포넌트 분리
- [ ] 색상 변수 설정
- [ ] 텍스트 스타일 정의
- [ ] 인터랙션 프로토타입 설정
- [ ] 개발자 핸드오프 준비

## 💡 추가 팁

1. **마스터 컴포넌트**: 각 카드 타입을 마스터 컴포넌트로 생성
2. **변수 사용**: 색상과 텍스트를 변수로 설정하여 일관성 유지
3. **프로토타이핑**: 실제 앱과 동일한 인터랙션 구현
4. **개발자 모드**: 명확한 네이밍과 구조로 개발 협업 용이
