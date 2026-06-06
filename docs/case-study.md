# Case Study: Linux Web Log SQL Analyzer

## Goal

nginx/apache access log와 SQL 실행 로그를 SQLite에 적재하고 CLI와 FastAPI 대시보드에서 분석하는 포트폴리오 프로젝트를 완성합니다.

## Classification

`Feature / API / Data / Security / Infra`

## Selected Team

| Role | Responsibility |
|---|---|
| PM | 범위, 작업 순서, 통합 판단 |
| Architect | parser, database, analyzer, web 모듈 경계 |
| Backend | CLI, API, validation, error handling |
| Database | schema, idempotent ingest, aggregate query |
| Security | HTML escape, parameterized SQL, sensitive query masking |
| DevOps | Docker and CI workflow |
| QA | parser, database, route, CLI regression tests |

## Parallelization

- Parser와 SQL parser는 입력 형식이 분리되어 병렬 구현 가능
- Security는 sanitize 계약을 정의한 뒤 웹 출력 경로를 독립 검토
- QA는 공개 API와 fixtures가 안정된 후 회귀 테스트 추가
- Database schema와 analyzer query는 계약 의존성이 있어 순차 처리

## Quality Gates

- malformed log를 조용히 버리지 않고 parse failure로 보존
- 재적재 시 source와 line number 기준 중복 방지
- 사용자 입력은 bound parameter로 조회
- token, password, API key, session query value 마스킹
- HTML에 표시되는 로그 값 escape
- unit tests와 Docker smoke test 실행

## Result

역할별 산출물을 PM이 통합해 CLI, 웹 대시보드, 보안 처리, 테스트, CI가 포함된 하나의 실행 가능한 프로젝트로 전달했습니다.

Applied repository: [linux-web-log-sql-analyzer](https://github.com/jiyoon99/linux-web-log-sql-analyzer)
