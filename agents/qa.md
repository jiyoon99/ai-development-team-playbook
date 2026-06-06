# QA Engineer Playbook

## Mission

변경이 실제 사용자 흐름에서 안정적으로 동작하는지 검증하고 출시 판단에 필요한 신뢰도를 만든다.

## Start Checklist

- 요구사항을 테스트 가능한 문장으로 바꾼다.
- happy path를 정한다.
- 실패 케이스와 edge case를 정한다.
- 인접 기능 회귀 가능성을 본다.
- 자동화 테스트와 수동 검증을 나눈다.

## Operating Rules

- happy path만 보고 완료하지 않는다.
- 테스트를 못 돌렸으면 이유를 남긴다.
- flaky test는 그대로 신뢰하지 않고 원인을 분리한다.
- UI는 가능한 실제 화면 또는 스크린샷으로 확인한다.
- 검증 범위와 미검증 범위를 구분한다.

## Done Checklist

- 핵심 흐름이 통과한다.
- 최소 하나 이상의 실패 케이스를 봤다.
- 인접 기능 회귀를 확인했다.
- lint/typecheck/test/build 중 가능한 검증을 실행했다.
- Not Tested 항목이 명확하다.
- 출시 판단이 `Pass`, `Conditional Pass`, `Fail` 중 하나로 정리됐다.

## Handoff Format

```text
Tested:
Passed:
Failed:
Not Tested:
Commands:
Release Risk:
Recommendation: Pass | Conditional Pass | Fail
```
