---
title: "1월 근황: 인증 카메라 하드웨어 개발기"
date: 2026-01-31T12:00:00+09:00
description: "사무실 없이 하드웨어 만들기"
summary: "사무실 없이 하드웨어 만들기"
tags: ["startup", "mutual", "hardware", "engineering"]
showTableOfContents: true
---

mutual 시작한 지 두 달 됐다. 1월에 뭘 했는지 정리해본다.

## 사무실이 없다!

지금은 서울대 301동 전자공학 실험실에서 작업하고 있다.

![연구실 전경](electronics-lab-wide.jpg)
*서울대 301동.*

하드웨어를 만들려면 장비가 필요한데, 오실로스코프 하나에 500만원, 파워 서플라이 200만원이다. 전부 사기엔 돈이 없다. 연구실에는 필요한 장비가 다 있고, 모르는 거 물어볼 사람도 있어서 당분간은 여기가 맞는 것 같다.

![작업 중](engineer-at-work.jpg)

## 뭘 만들고 있나

목표는 카메라가 찍는 순간, 하드웨어 안에서 서명하는 것이다. 소프트웨어가 손대기 전에 서명해야 의미가 있다.

ARM TrustZone으로 보안 영역을 만들고, 거기서 영상 프레임을 해싱한다. 출력은 [C2PA](https://c2pa.org/) 표준 호환을 목표로 설계되어, Adobe Content Credentials 같은 도구에서 검증할 수 있도록 할 계획이다.

![PCB 렌더](pcb-render-full.png)
*공동창업자 Alex의 첫 PCB.*

커스텀 칩은 안 쓴다. 5만원짜리 블랙박스에 들어가는 그 칩들을 설정만 다르게 해서 쓰고 있다.

## 삽질

카메라 모듈이랑 개발 보드가 안 맞아서 일주일을 통째로 날렸다.

I2C 버스가 안 잡히길래 로직 애널라이저로 찍어봤더니 전압이 안 맞는 거였다. 센서 쪽 풀업이 3.3V인데 보드는 1.8V를 기대하고 있었다. 이런 건 데이터시트에 안 나와 있어서 직접 겪어봐야 알 수 있다.

![센서 클로즈업](image-sensor-closeup.jpg)
*결국 저항 떼서 해결했다.*

## 어려운 문제

실시간으로 영상에 서명하는 건 생각보다 까다롭다.

1080p 30fps면 초당 흘러가는 데이터가 꽤 되는데, 해싱이 느리면 프레임이 밀리고, 해싱 타이밍이 늦으면 이미 신뢰할 수 없는 코드가 픽셀을 건드린 뒤라 의미가 없어진다.

일단 돌아가는 방식은 찾았는데, 튜닝은 더 해야 한다.

![작업 공간](lab-workspace-claude-code.jpg)

## 2월에 할 일

- PCB 소량 생산
- C2PA 검증 end-to-end로 붙이기
- 보험사 파일럿 시작 (블랙박스 영상 진위 검증)

![라즈베리파이 카메라](raspberry-pi-camera.jpg)
*시중 카메라 모듈로도 테스트하고 있다.*

---

![팀 사진 - 첫날](team-first-day-outside.jpg)
*첫날.*

![팀 사진 - PCB 도착](team-pcb-celebration.jpg)
*Alex 첫 보드가 도착한 날.*

---

## 같이 일할 사람?

- [**하드웨어 엔지니어 (공동창업자)**](/ko/careers/cofounder-hardware/) · FPGA, 암호화 가속기, 카메라 인터페이스
- [**임베디드 소프트웨어 엔지니어**](/ko/careers/embedded-engineer/) · Linux, TrustZone, 카메라 파이프라인
- [**마켓 전략가**](/ko/careers/market-strategist/) · 고객 발굴, 파일럿, GTM

보험/법률/콘텐츠 검증 쪽에서 일하시는 분 중에 인증 카메라 파일럿에 관심 있으시면 연락 주세요.

[jangyejun@gmail.com](mailto:jangyejun@gmail.com)

*이 글은 Claude의 도움을 받아 작성되었습니다. 리서치, 의사결정, 편집 판단은 본인이 직접 수행했습니다.*
