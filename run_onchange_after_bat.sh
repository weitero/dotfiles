#!/bin/bash

FRAPPE="$HOME/.config/bat/themes/themes/Catppuccin Frappe.tmTheme"
LATTE="$HOME/.config/bat/themes/themes/Catppuccin Latte.tmTheme"
MACCHIATO="$HOME/.config/bat/themes/themes/Catppuccin Macchiato.tmTheme"
MOCHA="$HOME/.config/bat/themes/themes/Catppuccin Mocha.tmTheme"

SHA256FILE="$HOME/.cache/bat/catppuccin.sha256"

CURRENT_HASH=$(cat "$FRAPPE" "$LATTE" "$MACCHIATO" "$MOCHA" 2>/dev/null | sha256 | gawk '{print $1}')

OLD_HASH=""
if [ -f "$SHA256FILE" ]; then
  OLD_HASH=$(cat "$SHA256FILE")
fi

if [ "$CURRENT_HASH" != "$OLD_HASH" ]; then
  bat cache --build
  echo "$CURRENT_HASH" >"$SHA256FILE"
fi
