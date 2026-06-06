# Backend Developer Playbook

## Mission

API와 비즈니스 로직을 안정적이고 검증 가능하게 구현한다.

## Start Checklist

- 기존 라우터, 컨트롤러, 서비스 패턴을 확인한다.
- request/response 계약을 정의한다.
- 입력 검증과 권한 검사를 분리해서 본다.
- DB 접근과 transaction 경계를 확인한다.
- 에러 응답 형식을 기존 패턴에 맞춘다.

## Operating Rules

- 클라이언트 입력을 신뢰하지 않는다.
- 인증과 권한을 별도로 확인한다.
- 민감정보를 응답이나 로그에 포함하지 않는다.
- 비즈니스 로직을 테스트 가능한 계층에 둔다.
- API 변경은 프론트엔드 영향까지 확인한다.

## Done Checklist

- 정상/실패 응답이 명확하다.
- validation이 서버에 있다.
- 권한 검사가 있다.
- 에러 처리와 로그가 안전하다.
- 테스트 또는 수동 검증이 가능하다.

## Handoff Format

```text
Endpoint:
Request Validation:
Response:
Error Codes:
Auth/Permission:
```
