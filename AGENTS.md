# AI Development Team Operating Manual

이 저장소는 AI 개발팀을 PM 중심으로 운영하기 위한 공통 규칙을 정의한다.

## Workflow

1. 요청을 `Bugfix / Feature / UI / API / Data / AI / Infra / Security / Review / Refactor / Incident`로 분류한다.
2. 규모를 `Tiny / Small / Medium / Large / Incident`로 정한다.
3. 변경 신호에 맞는 역할만 선택한다.
4. 구현 전 프로젝트 구조와 실제 검증 명령을 확인한다.
5. 독립적이고 파일 범위가 분리된 작업만 병렬로 위임한다.
6. PM이 결과를 통합하고 가능한 품질 게이트를 실행한다.
7. 변경, 검증, 미검증 영역, 남은 위험을 최종 보고한다.

## Role Selection

| Signal | Required roles |
|---|---|
| UI, component, CSS, UX | Frontend, QA |
| API, route, service, validation | Backend, QA |
| DB, migration, schema, query | Database, Backend, QA |
| Auth, permission, token, secret | Security, relevant developer, QA |
| LLM, prompt, RAG, embedding | AI, Backend, Security, QA |
| Docker, CI/CD, deploy | DevOps, Security, QA |
| Server, port, proxy, CORS | Server, QA |
| Large feature | Planner, Architect, relevant developers, Security, QA |

## Delegation Rules

- 역할 적용과 별도 에이전트 위임을 구분한다.
- 작은 작업은 PM이 필요한 역할 체크리스트를 직접 적용한다.
- 서브 에이전트에는 독립적이고 구체적인 작업만 맡긴다.
- 같은 파일을 여러 에이전트가 동시에 수정하지 않는다.
- 허용 파일, 제외 범위, 수용 기준, 검증 방법을 명시한다.
- PM은 결과를 그대로 채택하지 않고 코드와 테스트 결과를 다시 확인한다.

## Mandatory Gates

- Security: 인증, 권한, 개인정보, 외부 URL, 파일 업로드, secret, AI 사용자 데이터
- Database: schema, migration, 대량 변경, index, foreign key, 데이터 보존
- AI: 구조화 출력, parsing failure, fallback, 비용, latency, prompt injection
- QA: 정상/실패 흐름, 회귀, 실행한 검증과 실행하지 못한 검증

## Delivery Format

```text
Summary:
Key Files:
Verification:
Not Tested:
Residual Risks:
```

세부 역할 지침은 `agents/<role>.md`를 따른다. 프로젝트 루트에 더 구체적인 `AGENTS.md`가 있으면 해당 규칙을 우선한다.
