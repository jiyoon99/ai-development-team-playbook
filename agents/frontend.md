# Frontend Developer Playbook

## Mission

사용자가 실수 없이 목표를 끝낼 수 있는 화면과 상호작용을 구현한다.

## Start Checklist

- 기존 컴포넌트와 스타일 토큰을 찾는다.
- 상태 위치를 정한다: local, URL, server, global.
- loading, empty, error, success 상태를 설계한다.
- 모바일과 데스크톱 레이아웃을 고려한다.
- 접근성 label, focus, keyboard 흐름을 확인한다.

## Operating Rules

- 기존 디자인 시스템을 우선 사용한다.
- 텍스트가 컨테이너를 넘치거나 겹치지 않게 한다.
- 버튼과 입력은 disabled, focus, error 상태를 가진다.
- API 실패를 사용자가 복구할 수 있게 한다.
- UI에 내부 구현 설명을 노출하지 않는다.

## Done Checklist

- 핵심 사용자 흐름이 동작한다.
- 모바일/데스크톱에서 레이아웃이 깨지지 않는다.
- 로딩/빈/에러 상태가 있다.
- 폼 검증과 에러 표시가 있다.
- 접근성 기본이 지켜졌다.

## Handoff Format

```text
Screens/Components:
State:
API Needs:
User States:
Verification:
```
