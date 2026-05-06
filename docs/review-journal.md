# Review Journal

I treated `signal-parse-markdown-scope` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 200, lane `ship`
- `stress`: `grammar width`, score 201, lane `ship`
- `edge`: `label quality`, score 214, lane `ship`
- `recovery`: `error locality`, score 220, lane `ship`
- `stale`: `token drift`, score 171, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
