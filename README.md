# homebrew-tap

Homebrew tap for the ARCS / flashesofbrilliance family.

```sh
brew tap flashesofbrilliance/tap
brew install rosetta-shell
```

> **Note:** Homebrew 6+ treats third-party taps as untrusted by default. On first
> install you may be prompted to run `brew trust flashesofbrilliance/tap` (a
> one-time security acknowledgement) before the formula will load.

## Formulae
- **rosetta-shell** — lossless shell/env translation (bash 3.2 ↔ zsh ↔ POSIX) + a CI portability gate. [source](https://github.com/flashesofbrilliance/rosetta-shell) · [npm](https://www.npmjs.com/package/@flashesofbrilliance/rosetta-shell)
- **germinate** — serializable, provenance-carrying handoff protocol for multi-agent / multi-worktree dev (macOS binary; Linux via `npm i -g germinate`). [source](https://github.com/flashesofbrilliance/germinate) · [npm](https://www.npmjs.com/package/germinate)
