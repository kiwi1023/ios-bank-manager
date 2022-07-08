# 🏦 은행 창구 매니저
> 기간: 2022-06-27 ~ 2022-07-08
>
> 팀원: [Kay](https://github.com/KayAhnDS), [Kiwi](https://github.com/kiwi1023)
>
> 리뷰어: [Cory](https://github.com/corykim0829)

# 목차
* [프로젝트 소개](#프로젝트-소개)
    * [개발환경 및 라이브러리](#개발환경-및-라이브러리)
* [구현내용](#구현내용)
* [키워드](#키워드)
* [핵심경험](#핵심경험)
* [기능설명](#기능설명)
    * [STEP 1](https://github.com/kiwi1023/ios-bank-manager/blob/STEP1/docs/STEP1.md)
    * [STEP 2](https://github.com/kiwi1023/ios-bank-manager/blob/STEP2/docs/STEP2.md)

# 프로젝트 소개
은행 창구 매니저 앱을 iOS 어플리케이션으로 구현해보는 프로젝트입니다.
다양한 작품들과 해당 작품에 대한 상세한 설명을 볼 수 있습니다.

### 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.6-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.3-blue)]()

# UML
![](https://i.imgur.com/YnPCee8.png)


# 구현내용

| 콘솔 앱 실행 예시 | UI 앱 실행 예시 |
| -------- | -------- |
|![](https://i.imgur.com/HOkOL7f.gif) | 
# 키워드

`GCD`, `Synchronous`,`Asynchronous`, `Thread`, `Concurrent Programming`, `Functional Programming`, `Delegation`, `MVC`, `Design Patterns`

# 핵심경험
- [x]  Linked-list 자료구조의 이해 및 구현
- [x] Queue 자료구조의 이해 및 구현
- [x] Generics 개념이해 및 적용
- [x] Queue의 활용
- [x] 타입 추상화 및 일반화
- [x] 동기(Synchronous)와 비동기(Asynchronous)의 이해
- [x] 동시성 프로그래밍 개념의 이해
- [x] 동시성 프로그래밍을 위한 기반기술(GCD, Operation) 등의 이해
- [x] 스레드(Thread) 개념에 대한 이해
- [x] GCD를 활용한 동시성 프로그래밍 구현
- [x] 동기(Synchronous)와 비동기(Asynchronous) 동작의 구현 및 적용
- [x] 동시성 프로그래밍 중 UI 요소 업데이트의 주의점 이해
- [x] 커스텀 뷰 구현
- [x] 스택뷰 활용
- [x] Xcode 프로젝트 관리 구조의 이해와 응용

# 기능설명
## Console App

### Bank
> 은행 영업을 시작하거나, 은행원들에게 일을 부여하는 등 은행의 전반적인 업무를 처리하는 클래스입니다.
### Banker
> 고객들의 업무를 처리하는 기능을하는 클래스입니다.
### Customer
> 고객번호와 고객의 업무를 프로퍼티로 갖는 클래스입니다.
### BankWorkType
> 은행에서 볼수 있는 업무들의 정보를 담은 열거형입니다.
### Queue
> 고객들의 대기열을 담을 수 있는 큐를 LinkedList를 통해 구현한 타입입니다.
