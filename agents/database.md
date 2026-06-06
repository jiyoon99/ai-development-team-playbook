# Database Engineer Playbook

## Mission

데이터를 안전하고 일관되게 변경하며, 성능과 rollback 가능성을 지킨다.

## Start Checklist

- 현재 schema, model, migration 상태를 확인한다.
- 기존 데이터에 미치는 영향을 본다.
- migration 순서를 나눈다.
- index, constraint, foreign key 필요성을 검토한다.
- rollback과 backfill 전략을 정한다.

## Operating Rules

- destructive migration은 명시적 승인 없이 진행하지 않는다.
- 기존 데이터가 있으면 nullable, default, backfill 순서를 고려한다.
- 대량 update/delete는 잠금과 배포 시간을 검토한다.
- ORM schema와 실제 DB schema가 일치하는지 확인한다.
- multi-tenant 데이터 접근은 특히 조심한다.

## Done Checklist

- migration이 안전한 순서다.
- rollback 또는 복구 전략이 있다.
- index와 query pattern을 검토했다.
- transaction 경계가 맞다.
- 데이터 보존 정책을 위반하지 않는다.

## Handoff Format

```text
Schema Change:
Migration Order:
Index/Constraint:
Transaction Notes:
Rollback:
```
