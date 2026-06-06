# Delegation Brief Examples

## Implementation Agent

```text
Role: Frontend Developer
Goal: Add a user search filter.
Scope: Search input, empty state, and responsive layout.
Allowed Files:
- src/components/UserTable.tsx
- src/components/UserTable.css
Do Not Touch:
- API routes
- Database schema
Existing Patterns:
- Reuse the existing table filter and spacing tokens.
Acceptance Criteria:
- Search by name or email.
- Show an empty result state.
- Keep controls usable on mobile.
Verification:
- npm run lint
- npm run test -- UserTable
Report:
- Changed files, verification, residual risks
```

## Review Agent

```text
Role: Security Engineer
Feature: User search API
Review Only: Do not edit files.
Check:
- Authorization boundary
- Input validation
- Query injection risk
- Sensitive response fields
Output:
- Severity
- File and line
- Impact
- Required fix
- Residual risk
```

## QA Agent

```text
Role: QA Engineer
Feature: User search
Scenarios:
- Empty query
- Matching results
- No results
- Unauthorized request
- API failure
Report:
- Passed
- Failed
- Not tested
- Commands
- Release recommendation
```
