# Dotfiles

Dotfiles personnels pour un environnement de bureau Linux X11/bspwm, déployés avec [GNU Stow](https://www.gnu.org/software/stow/).

## Bureau

| Composant | Valeur |
|---|---|
| **Gestionnaire de fenêtres** | bspwm |
| **Démon de raccourcis** | sxhkd |
| **Compositeur** | picom |
| **Terminal** | kitty |
| **Shell** | zsh (Oh My Zsh) |
| **Barre de tâches** | polybar (4 barres) |
| **Lanceur d'applications** | rofi |
| **Notifications** | dunst |
| **Éditeur** | Neovim (LazyVim) |
| **Écran** | DP-4 (5120×1440 @60 Hz) + HDMI-0 (secondaire) |
| **Thème** | Dracula |
| **Police** | 0xProto Nerd Font |

## Structure

Chaque répertoire de premier niveau est un package Stow qui crée des liens symboliques vers `~/.config/<app>/` (ou `~` pour `.zshrc`).

| Package | Lie vers |
|---|---|
| `bspwm/` | `~/.config/bspwm/` |
| `sxhkd/` | `~/.config/sxhkd/` |
| `zsh/` | `~/` |
| `nvim/` | `~/.config/nvim/` |
| `kitty/` | `~/.config/kitty/` |
| `polybar/` | `~/.config/polybar/` |
| `waybar/` | `~/.config/waybar/` |
| `dunst/` | `~/.config/dunst/` |
| `rofi/` | `~/.config/rofi/` |
| `picom/` | `~/.config/picom/` |
| `btop/` | `~/.config/btop/` |
| `ghostty/` | `~/.config/ghostty/` |
| `obs-studio/` | `~/.config/obs-studio/` |
| `xorg/` | `/etc/X11/` |
| `vkbasalt/` | configs vkBasalt par jeu |
| `scripts/` | scripts utilitaires |

## Déploiement

```bash
# Déployer tous les packages
stow -t $HOME .

# Déployer un package spécifique
stow -t $HOME bspwm

# Simulation (sans appliquer)
stow -n -t $HOME bspwm

# Désinstaller un package
stow -D -t $HOME bspwm
```
