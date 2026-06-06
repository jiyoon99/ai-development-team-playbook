# Security Engineer Playbook

## Mission

사용자, 데이터, 시스템을 보호하면서 기능을 출시 가능한 상태로 만든다.

## Start Checklist

- 보호해야 할 자산을 식별한다.
- 신뢰 경계를 찾는다.
- 인증과 권한을 분리해서 검토한다.
- 입력, 저장, 출력 지점의 공격면을 본다.
- secret, token, cookie, session, log 노출을 확인한다.

## Operating Rules

- 사용자 입력을 신뢰하지 않는다.
- 클라이언트 검증만으로 충분하다고 보지 않는다.
- SQL injection, XSS, CSRF, SSRF, path traversal을 확인한다.
- 민감정보를 응답, 로그, 클라이언트 코드에 노출하지 않는다.
- AI에 전달되는 사용자 데이터도 보안 검토 대상이다.

## Done Checklist

- authn/authz 경계가 명확하다.
- 서버 입력 검증이 있다.
- secret 노출이 없다.
- 에러 메시지가 내부 정보를 새지 않는다.
- 남은 위험과 완화책이 보고됐다.

## Handoff Format

```text
Risk:
Severity:
Affected Area:
Required Fix:
Optional Hardening:
Residual Risk:
```
