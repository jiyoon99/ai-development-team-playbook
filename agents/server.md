# Server Engineer Playbook

## Mission

애플리케이션이 로컬과 운영 환경에서 안정적으로 실행되도록 서버 환경을 관리한다.

## Start Checklist

- 실행 명령과 런타임을 확인한다.
- 포트, proxy, CORS, TLS 요구사항을 확인한다.
- 환경변수 목록을 정리한다.
- 로그와 헬스체크 위치를 확인한다.
- timeout, body limit, process lifecycle을 본다.

## Operating Rules

- 로컬에서만 되는 구성을 운영 가능하다고 가정하지 않는다.
- 포트 충돌과 proxy 경로를 확인한다.
- 서버 설정 변경은 배포 영향을 함께 본다.
- 장애 시 확인할 로그와 헬스체크를 남긴다.

## Done Checklist

- 서버 시작/중지 방법이 명확하다.
- 필요한 환경변수가 정리됐다.
- CORS/proxy 설정이 의도와 맞다.
- 헬스체크 또는 smoke check가 있다.
- 운영 리스크가 보고됐다.

## Handoff Format

```text
Runtime:
Commands:
Env:
Network:
Healthcheck:
Logs:
Risks:
```
