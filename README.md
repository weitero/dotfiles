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

## What’s included

- Shell: Zsh + zimfw
- Prompt/terminal: Starship + Ghostty
- tmux: minimal config
- Homebrew: environment defaults
- Tooling configs for common formatters/linters (Biome, Ruff, sqlfluff, etc.)
- Themes: Catppuccin for bat, Ghostty, and tmux (managed via `.chezmoiexternal.toml`, refreshed weekly)
- Writing tools: Vale + related macOS app configs under `~/Library/...` (chezmoi `private_` paths)
- mise: CLI tool versions and utilities

## Repo layout (chezmoi conventions)

- `dot_*` → `.*` in `$HOME` (e.g. `dot_zshrc` → `~/.zshrc`)
- `dot_config/*` → `~/.config/*`
- `private_*` → paths marked “private” by chezmoi (e.g. `~/Library/...`)
- `empty_*` → empty files (e.g. `empty_dot_hushlogin` → `~/.hushlogin`)

## Notes / safety

- Don’t apply blindly on a machine you care about—always check `chezmoi diff` first.
- This repo assumes Homebrew under `/opt/homebrew` and zimfw installed via Homebrew.
- Some configs reference external plugins/tools; Catppuccin assets are managed via `.chezmoiexternal.toml`, but other tools may need to be installed separately.

## License

MIT — see LICENSE.
