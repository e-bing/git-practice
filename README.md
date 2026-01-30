# 0. git-practice
깃린이들을 위한 실습 레포

# 1. 브랜치 구성
```
git-practice
│
├── [main] : 실제 구동 가능한 하드웨어 배포 버전 (v1.0 Stable)
│    └─ 🚩 Tag: v1.0 (센서 데이터 수집 및 대시보드 표시 완)
│
├── [dev] : 통합 테스트용 개발 브랜치 (서버+클라이언트 합쳐지는 곳)
│    │
│    ├── [feature/rpi-server] : 중앙 RPI 서버 제어
│    │
│    ├── [feature/camera-node] : 카메라 노드 서버(CCTV)
│    │
│    ├── [feature/STM32] : STM32 펌웨어
│    │
│    └── [feature/client-ui] : 모니터링 클라이언트
│
└── [hotfix/sensor-error] : 배포 후 센서 값이 0으로 뜨는 현상 긴급 수정
```

# 2. 브랜치 할당

- 예찬 : rpi-sensor
- 종관 : server-api
- 태우 : STM32
- 예빈 : client-ui

# 3. 개인 작업 내용
[원격 저장소]
- 아래 작업 내용을 숙지한 후에 본인이 작업할 내용 이슈로 생성하기

[로컬(개인PC)]
- 각 브랜치 아래에 rpi_server.c 등으로 소스 파일과 헤더 파일 생성
- 함수 프로토타입은 아래와 같고, 각자 맞는 함수 구현하기
  ```
  void rpi_server_hello(void);
  void camera_node_hello(void);
  void stm32_firmware_hello(void);
  void client_ui_hello(void);
  ```
- 출력 함수를 이용하여 "브랜치명 hello!" 가 출력되도록 함수 구현
- 각자 2번 이상 커밋
- 커밋 컨벤션은 아래와 같음
  ```
  [type][scope]: 짧고 명확한 제목 (50자 이내)
  
  - 세부 변경사항 1
  - 세부 변경사항 2 (72자 이내)
  
  Closes #123
  ```
- 예시
  ```
  (feature/rpi-server)
  1st 커밋: [feat][rpi]: 기본 소스 파일 생성
  rpi_server.c 파일 생성 및 "rpi-server hello!" 출력 기본 구조 작성.
  
  2nd 커밋: [docs][rpi]: rpi_server_hello 함수 설명 주석 추가
  
  3rd 커밋: [chore][rpi]: Makefile 빌드 옵션 수정
  컴파일러 경고 옵션(-Wall) 추가 및 정리.
  ```
  
[원격 저장소]
- dev 브랜치로 PR 요청 (merge는 하지 않음)
- PR 요청하면 다같이 확인
- Closes #이슈번호 로 이슈 닫히는 것 확인하기
