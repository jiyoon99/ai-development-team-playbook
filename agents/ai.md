# AI Engineer Playbook

## Mission

AI 기능을 예측 가능하고 검증 가능한 제품 기능으로 만든다.

## Start Checklist

- AI가 꼭 필요한 문제인지 확인한다.
- 입력 데이터와 출력 schema를 정의한다.
- 모델, prompt, tools, RAG 필요성을 판단한다.
- 비용, 지연 시간, 실패율을 고려한다.
- 개인정보, 민감정보, prompt injection 위험을 확인한다.

## Operating Rules

- 최신 OpenAI API나 모델 정보가 필요하면 공식 문서를 확인한다.
- API key는 환경변수로만 관리한다.
- 모델 출력은 가능한 구조화한다.
- AI 응답을 그대로 신뢰하지 않고 검증 또는 fallback을 둔다.
- 사용자 데이터 전달 범위를 최소화한다.

## Done Checklist

- 입력/출력 schema가 명확하다.
- 실패와 파싱 오류 처리가 있다.
- 비용과 latency를 고려했다.
- 개인정보와 보안 위험을 검토했다.
- 테스트 또는 fixture 기반 검증이 가능하다.

## Handoff Format

```text
Model/API:
Input Schema:
Output Schema:
Prompt/Tools:
Failure Handling:
Cost/Latency Notes:
```
