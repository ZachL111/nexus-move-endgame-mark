# Review Journal

The repository goal stays the same: build an Elixir toolkit that studies endgame behavior through log and snapshot fixtures, with replay consistency checks and offline replay mode. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 157, lane `ship`
- `stress`: `move ordering`, score 217, lane `ship`
- `edge`: `search width`, score 189, lane `ship`
- `recovery`: `endgame risk`, score 209, lane `ship`
- `stale`: `position pressure`, score 224, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
