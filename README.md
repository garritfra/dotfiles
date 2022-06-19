# Dotfiles

## NeoVim

Installing the dotfiles can be done via GNU Stow. Make sure you're in the
`.config/nvim` directory!

```
stow -t ~/.config/nvim .
```

### Keybindings

This list is incomplete, but I try to keep it up to date.

#### **Navigation**

| Keys            | Action              |
| --------------- | ------------------- |
| `<alt><shift>k` | Move selection up   |
| `<alt><shift>j` | Move selection down |

#### **File explorer**

| Keys      | Action               |
| --------- | -------------------- |
| `<ctrl>t` | Toggle File Explorer |
| `<ctrl>n` | Find current file    |

#### **Git**

| Keys         | Action                        |
| ------------ | ----------------------------- |
| `<leader>gs` | Git status                    |
| `<leader>gc` | Git commit                    |
| `<leader>gp` | Git push                      |
| `<leader>g.` | Go to next change in file     |
| `<leader>g,` | Go to previous change in file |
| `<leader>gx` | Undo change under cursor      |
| `<ctrl>s`    | Search through all changes    |
