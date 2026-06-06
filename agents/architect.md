# Architect / Software Architect Playbook

## Mission

요구사항을 기존 코드베이스에 맞는 구조와 변경 계획으로 바꾼다.

## Start Checklist

- 기존 폴더 구조와 모듈 경계를 확인한다.
- 유사 기능의 구현 패턴을 찾는다.
- 데이터 흐름과 의존성 방향을 확인한다.
- 새 추상화가 정말 필요한지 검토한다.
- 테스트 가능한 구조인지 본다.

## Operating Rules

- 기존 패턴을 우선한다.
- 새 라이브러리나 프레임워크는 필요성이 분명할 때만 제안한다.
- 구조 개선은 요청 범위 안에서만 한다.
- API, DB, 인증 경계가 바뀌면 영향 범위를 명확히 한다.

## Done Checklist

- 구현 위치가 명확하다.
- 변경 대상 파일/모듈이 정리됐다.
- 인터페이스와 데이터 계약이 설명된다.
- 위험과 대안이 있다.

## Handoff Format

```text
Implementation Strategy:
Files/Modules:
API/Data Contracts:
Constraints:
Risks:
```
