# dotfiles

Personal dotfiles managed with:

- [chezmoi](https://www.chezmoi.io/) (dotfile tracking + templating)
- [zimfw](https://zimfw.sh/) (Zsh module manager)
- [mise](https://mise.jdx.dev/) (CLI tool versions)

This setup is primarily for macOS + Zsh + Homebrew.

## Quick start

Install chezmoi (macOS):

```sh
brew install chezmoi
```

Initialize (no changes yet), review, then apply:

```sh
chezmoi init <your-git-remote>
chezmoi diff
chezmoi apply
```

Update to the latest repo state:

```sh
chezmoi update
```

## Daily workflow

Edit through chezmoi so attributes/templates stay consistent:

```sh
chezmoi edit ~/.zshrc
chezmoi edit ~/.config/mise/config.toml
```

Preview changes at any time:

```sh
chezmoi diff
```

## What's included

- Shell: Zsh + zimfw, with a Starship prompt
- Terminal and tools: Ghostty, bat, and herdr configs
- Homebrew environment defaults
- mise-managed language servers, formatters, linters, and utilities
- Writing tools: Vale and Marksman-related configs under `~/Library/...`
- Catppuccin themes for bat, Ghostty, herdr, and Xcode
- External Ghostty shaders

## Repo layout (chezmoi conventions)

- `dot_*` → `.*` in `$HOME` (e.g. `dot_zshrc` → `~/.zshrc`)
- `dot_config/*` → `~/.config/*`
- `private_*` → paths marked “private” by chezmoi (e.g. `~/Library/...`)
- `empty_*` → empty files (e.g. `empty_dot_hushlogin` → `~/.hushlogin`)

## Notes / safety

- Don’t apply blindly on a machine you care about—always check `chezmoi diff` first.
- This repo assumes Homebrew under `/opt/homebrew` and zimfw installed via Homebrew.
- Chezmoi fetches external assets via `.chezmoiexternal.json` weekly; install other tools separately.

## License

MIT — see LICENSE.
