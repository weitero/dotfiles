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

- Shell: Zsh config (`~/.zshrc`, `~/.zprofile`) + zimfw modules (`~/.zimrc`)
- Prompt: Starship config (`~/.config/starship.toml`)
- tmux: minimal config with iTerm2 integration (`~/.tmux.conf`)
- Homebrew: environment defaults (`~/.homebrew/brew.env`)
- Tooling configs: Biome, Ruff, sqlfluff, stylua, rustfmt, yamlfmt/yamlfix, sqls, tombi
- Themes: Catppuccin themes/plugins for bat, Ghostty, and tmux (managed via `.chezmoiexternal.toml`, refreshed weekly); optional Godot + Xcode themes on macOS
- Writing tools: Vale configuration under `~/Library/Application Support/...` (chezmoi `private_` paths)
- mise: manages utility tools (e.g. Nerd Fonts `font-patcher`)

## Repo layout (chezmoi conventions)

- `dot_*` → `.*` in `$HOME` (e.g. `dot_zshrc` → `~/.zshrc`)
- `dot_config/*` → `~/.config/*`
- `private_*` → paths marked “private” by chezmoi (e.g. `~/Library/...`)
- `empty_*` → empty files (e.g. `empty_dot_hushlogin` → `~/.hushlogin`)

## Notes / safety

- Don’t apply blindly on a machine you care about—always check `chezmoi diff` first.
- This repo assumes Homebrew under `/opt/homebrew` and zimfw installed via Homebrew.
- Some configs reference external plugins/tools; Catppuccin themes are managed via `.chezmoiexternal.toml`, but other plugins/tools may need to be installed separately.

## License

MIT — see LICENSE.
