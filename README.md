# dotfiles

Personal configuration managed with:

- [chezmoi](https://www.chezmoi.io/): tracks and applies all dotfiles
- [zimfw](https://zimfw.sh/): manages Zsh modules
- [mise](https://mise.jdx.dev/): manages CLI tools (e.g. `font-patcher`)

## What’s in here

This is a chezmoi source directory. Files are stored in a chezmoi-friendly form
(e.g. `dot_zshrc` maps to `~/.zshrc`, `dot_config/*` maps to `~/.config/*`).

Notable bits:

- Zsh config: `dot_zshrc`, `dot_zprofile`
- tmux config: `dot_tmux.conf`
- Zim config: `dot_zimrc`
- Homebrew env: `dot_homebrew/brew.env`
- Tooling config: `dot_config/mise/config.toml`, `dot_config/starship.toml`,
  `dot_config/pip/pip.conf`

## Prerequisites

- chezmoi
- Git
- Zsh

Optional (recommended):

- zimfw
- mise

## Bootstrap / install on a new machine

1. Install chezmoi.

   On macOS via Homebrew:

   ```sh
   brew install chezmoi
   ```

2. Initialize and apply:

```sh
chezmoi init --apply <your-git-remote>
```

If you already have the repo locally:

```sh
chezmoi apply
```

## Day-to-day usage

Edit files via chezmoi so templates/attributes stay consistent:

```sh
chezmoi edit ~/.zshrc
chezmoi edit ~/.config/mise/config.toml
```

See what would change:

```sh
chezmoi diff
```

Apply changes:

```sh
chezmoi apply
```

Pull upstream updates and apply:

```sh
chezmoi update
```

## Homebrew (`brew.env`)

Homebrew-related environment variables live in `~/.homebrew/brew.env` (tracked
here as `dot_homebrew/brew.env`).

## Zsh modules (zimfw)

Zim is configured via `~/.zimrc`.

Common commands:

```sh
zimfw install
zimfw update
```

## Tool management (mise)

mise configuration lives in `~/.config/mise/config.toml`.

Typical flow:

```sh
mise install
mise list
```

If `font-patcher` (or other tools) are defined in mise, this repo expects mise
to provide them.

## License

See LICENSE.
