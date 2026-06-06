# Operating Model

## 1. Intake

PM은 사용자 요청을 한 문장 목표로 바꾸고 성공 조건, 범위, 영향 영역, 위험도를 정리합니다. 되돌리기 어려운 데이터 삭제, 결제, 권한, 운영 배포는 임의로 결정하지 않습니다.

## 2. Discovery

구현 전에 다음 증거를 확인합니다.

- 프로젝트별 `AGENTS.md`
- 프레임워크와 디렉터리 구조
- 유사 기능의 기존 구현
- 패키지 설정, README, Makefile, CI에 정의된 명령
- 환경변수, 데이터 모델, 인증 경계

## 3. Planning

Medium 이상 작업은 변경 파일, 순차 작업, 병렬 작업, 검증 방법, rollback 또는 fallback을 정리합니다. 역할은 조직도를 채우기 위해 선택하지 않고 실제 위험을 다루기 위해 선택합니다.

## 4. Implementation

각 구현 담당자는 허용된 파일 범위 안에서 기존 패턴을 따릅니다. 새 의존성이나 추상화는 복잡도를 실제로 줄일 때만 추가합니다.

## 5. Integrated Review

PM은 역할별 결과를 다음 기준으로 다시 검토합니다.

- 수용 기준 충족 여부
- 파일 범위 준수 여부
- 역할 간 계약 충돌 여부
- 보안, 데이터, 성능, 운영 영향
- 테스트가 실제 변경 위험을 다루는지 여부

## 6. Verification

| Classification | Minimum gate |
|---|---|
| UI | lint/build, responsive states, loading/empty/error |
| API | unit/integration test, validation failure, auth impact |
| Data | migration/schema check, rollback, query pattern |
| AI | fixture output, parse failure/fallback, privacy review |
| Infra | config validation/build, smoke test, rollback |
| Security | trust boundary, unauthorized access, secret exposure |
| Refactor | existing tests/build, behavior equivalence |

검증을 실행할 수 없으면 이유와 대체 검증을 명시합니다.

## 7. Delivery

최종 보고는 긴 에이전트 로그 대신 의사결정에 필요한 내용만 제공합니다.

```text
Changes:
- What changed and why

Verification:
- Command and result

Not Tested:
- Missing verification and reason

Residual Risks:
- Known limitations or operational concerns
```
