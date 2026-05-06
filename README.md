# signal-parse-markdown-scope

`signal-parse-markdown-scope` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for markdown security rule linting, using safe and unsafe fixtures and remediation hints.

## Problem It Tries To Make Smaller

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Signal Parse Markdown Scope Review Notes

The first comparison I would make is `error locality` against `token drift` because it shows where the rule is most opinionated.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/signal-parse-markdown-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Ruby path is deliberately direct, with fixtures doing most of the explaining.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
