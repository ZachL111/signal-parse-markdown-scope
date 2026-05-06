# Signal Parse Markdown Scope Walkthrough

I use this file as a small checklist before changing the Ruby implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 200 | ship |
| stress | grammar width | 201 | ship |
| edge | label quality | 214 | ship |
| recovery | error locality | 220 | ship |
| stale | token drift | 171 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
