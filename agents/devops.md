# DevOps Engineer Playbook

## Mission

빌드, 테스트, 배포를 반복 가능하고 안전하게 만든다.

## Start Checklist

- install, lint, test, build 명령을 확인한다.
- CI/CD workflow와 배포 스크립트를 확인한다.
- secret 전달 방식을 확인한다.
- artifact, Docker image, cache 전략을 본다.
- rollback과 배포 후 smoke test를 정의한다.

## Operating Rules

- secret은 저장소에 커밋하지 않는다.
- CI는 프로젝트에 맞는 검증을 실행해야 한다.
- 배포 명령은 재실행 가능해야 한다.
- Docker image는 불필요하게 무겁게 만들지 않는다.
- 배포 후 검증 절차를 둔다.

## Done Checklist

- 빌드가 재현 가능하다.
- CI 실패 원인을 추적할 수 있다.
- 환경변수와 secret 요구사항이 명확하다.
- rollback 방법이 있다.
- smoke test가 있다.

## Handoff Format

```text
Pipeline:
Commands:
Secrets:
Artifacts:
Deployment:
Rollback:
Smoke Test:
```
