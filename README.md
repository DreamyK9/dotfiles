# dotfiles

Settings and configs for the tools I use

## Workflow

### Branch Policy

- main: stable, Only well-tested configs and features get here. No more than 1 commit per day
- unstable: Config changes go here first, new features after minimal testing.
- dev: Features in development. Cross-feature testing happens here.
- feature/\*: New features get their own branch until they are ready for dev.

## Commit Prefixes

- feat: A new feature or new functionality has been added
- fix: A bug has been fixed
- test: Tests have been added or updated
- refactor: Code has been restructured without changing its behavior
- docs: Documentation has been updated
- chore: Miscellanious changes that do not modify src or test files

## Configs / Settings included:

- [x] NeoVim - ~/.config/nvim
- [x] Bash - ~
- [x] Windows Terminal (DISCONTINUED)
- [x] Lazygit
- [ ] zsh
- [ ] mcphub (watch for internal stuff (maybe private repo)

## Workflow TODO

- [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- XDG-variables
- dotfile management for windows using PowerShell and a stow alternative
- rework pathlib with -options ( -f force, -o optional, -w warn)
- rust command line tools: https://gist.github.com/sts10/daadbc2f403bdffad1b6d33aff016c0a
- https://github.com/nvim-telescope/telescope-file-browser.nvim
- Steal from [Primeagen](https://github.com/ThePrimeagen/.dotfiles)
- Git Worktree with nvim ([Youtube](https://www.youtube.com/watch?v=2uEqYw-N8uE))
- NixOS [in WSL](https://nix-community.github.io/NixOS-WSL/)
- NixOS everywhere
- Take a look at [Kickstart-Nvim](https://github.com/dam9000/kickstart-modular.nvim)!
- Take a look at [LazyVim](https://www.lazyvim.org/)
- Layered NeoVim Config (offline, minimal, full)
- [NixVim](https://github.com/nix-community/nixvim)
- [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)
- Gitlab and Nextcloud for hosting and syncing my stuff
- [Bum](https://gitlab.com/waterkip/bum) for git

I don't care if this doesn't fit here! It's the same topic for me >:3

## Inspiration / Sources

- [@nickjj/dotfiles](https://github.com/nickjj/dotfiles/)
- NeoVim
  - [Neovim for Newbs by typecraft](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)
  - [wuelnerdotexe: neovimcraft](https://neovimcraft.com/plugin/wuelnerdotexe/nvim/)
  - [Telescope Extensions - Reddit](https://www.reddit.com/r/neovim/comments/1fwp13l/neovim_telescope_extensions/?tl=de)
  - [Telescope Extensions - YouTube](https://www.youtube.com/watch?v=3RJ05hj23Vg)
  - [nvim-lazy](https://github.com/slydragonn/nvim-lazy)

## Command Line Tools:

- fd-find
- fzf
- ripgrep
- tldr
- yazi
