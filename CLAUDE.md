# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

Personal Linux dotfiles for an X11/bspwm desktop environment, deployed with **GNU Stow**. Each top-level directory is a Stow package that symlinks to `~/.config/<app>/` (or `~` for `.zshrc`). The convention is `/<app>/.config/<app>/` — the directory name matches the app, and configs sit inside a `.config/<app>/` subdirectory.

### Deployment

```bash
# Deploy a specific package
stow -t $HOME bspwm

# Deploy all packages
stow -t $HOME .

# Dry run (preview what would be linked)
stow -n -t $HOME bspwm

# Unlink a package
stow -D -t $HOME bspwm
```

`-t $HOME` est nécessaire car `.zshrc` (dans `zsh/.zshrc`) doit être lié directement dans `$HOME`, pas dans `$HOME/.config/`.

## Architecture

```
dotfiles/
├── bspwm/            → ~/.config/bspwm/
│   └── .config/bspwm/bspwmrc        # WM startup: launches sxhkd, polybar, picom, dunst, fcitx5, etc.
├── sxhkd/            → ~/.config/sxhkd/
│   └── .config/sxhkd/sxhkdrc        # Hotkey definitions (super-based, bspwm-focused)
├── zsh/              → ~/
│   └── .zshrc                       # Oh My Zsh (powerline theme, git plugin)
├── nvim/             → ~/.config/nvim/
│   └── .config/nvim/init.lua        # LazyVim dist; extras: JSON, Markdown, TypeScript/VTSLS
├── kitty/            → ~/.config/kitty/
│   └── .config/kitty/kitty.conf     # Terminal: 0xProto Nerd Font, wallpaper bg
├── polybar/          → ~/.config/polybar/
│   └── .config/polybar/config.ini   # 4 bars (bar1: xwindow center, bar2: workspaces+tray left, bar3: sys tray right, bar4: workspaces on HDMI-0)
├── waybar/           → ~/.config/waybar/
│   └── .config/waybar/config.jsonc  # Waybar config (hyprland modules — dual-bar setup)
├── dunst/            → ~/.config/dunst/
│   └── .config/dunst/dunstrc        # Notifications: top-right, Dracula colors, 3 urgency levels
├── rofi/             → ~/.config/rofi/
│   └── .config/rofi/config.rasi     # App launcher: dracula theme, Oranchelo icons, ghostty terminal
├── picom/            → ~/.config/picom/
│   └── .config/picom/picom.conf     # Compositor: GLX backend, vsync, fade, unfocused opacity 0.95
├── btop/             → ~/.config/btop/
├── ghostty/          → ~/.config/ghostty/
├── obs-studio/       → ~/.config/obs-studio/
├── xorg/             → X11 config
│   └── xorg.conf
├── vkbasalt/         → per-game vkBasalt configs
│   ├── Skyrim/vkBasalt.conf
│   ├── SagaFrontierRemastered/vkBasalt.conf
│   └── RomancingSaga3/vkBasalt.conf
└── scripts/
    └── displayhelp.sh               # Rofi-based shortcut help popup
```

## Key details

- **Desktop**: X11 + bspwm tiling WM + sxhkd hotkeys + picom compositor
- **Monitor setup**: DP-4 (primary, 5120x1440 @60Hz) + HDMI-0 (secondary)
- **Keyboard**: US layout with AltGr/intl variant (`setxkbmap us -variant alt-intl`)
- **Font**: 0xProto Nerd Font (kitty, polybar), JetBrains Mono Medium 22 (dunst)
- **Theme**: Dracula (polybar, rofi, dunst urgency), Catppuccin/Mocha (waybar CSS)
- **Polybar**: 4 bars on DP-4 (bar1 center xwindow, bar2 left workspaces+tray, bar3 right sysinfo, bar4 on HDMI-0 workspaces)
- **Neovim**: LazyVim dist with JSON/Markdown/TypeScript extras
- **Key shortcuts**: `super+alt+shift+1` → 5120x1440, `super+alt+shift+2` → 2560x1440; `super+{h,j,k,l}` bspwm focus; `super+{1-9,0}` desktop switching

## Editing configs

- Changes to `bspwmrc` take effect on next login or after restarting bspwm (`bspc wm -r`)
- `sxhkdrc` can be reloaded live with `pkill -USR1 -x sxhkd` (bound to `super+Escape`)
- Polybar needs `pkill polybar && polybar -c ~/.config/polybar/config.ini &` to reload
- Kitty config reloads on next launch (no live reload)
- Dunst reloads on next notification or `dunstctl set-config`
