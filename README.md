# dotfiles

Personal dotfiles managed with:

- [chezmoi](https://www.chezmoi.io/) (dotfile tracking + templating)
- [zimfw](https://zimfw.sh/) (Zsh module manager)
- [mise](https://mise.jdx.dev/) (CLI tool versions)

This setup is primarily for macOS + Zsh + Homebrew.

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

## Notes

- This repo assumes Homebrew under `/opt/homebrew` and zimfw installed via Homebrew.
- Chezmoi fetches external assets via `.chezmoiexternal.json` weekly; install other tools separately.

## License

MIT — see LICENSE.
