# Screenshot

![Screenshot](https://github.com/Lezgend/dotfiles/blob/main/screenshot/Screenshot.png?raw=true)

## Installation

```bash
# Clone the dotfiles repository
git clone https://github.com/Lezgend/dotfiles

# Navigate to the dotfiles directory
cd dotfiles

# Move the dotfiles to your home directory
mv . $HOME

# Make the installation script executable
chmod +x install.sh

# Run the installation script
./install.sh
```

**Please Note:** I have only tested this on EndeavourOS, which is an Arch-based distribution.

## Customization

I have customized my desktop environment following the instructions provided in [this link](https://www.pling.com/p/1965520/). This theme offers a sleek and modern appearance to my Linux desktop, enhancing its overall aesthetic.

### Customizing the Gnome Desktop

```bash
# Make the installation script executable
chmod +x custom-desktop.sh

# Run the installation script
./custom-desktop.sh
```

**Please Note:** I have only tested this on EndeavourOS, which is an Arch-based distribution.

## Tools

- [eza] - A modern, maintained replacement for ls
- [bat][bat] - A cat(1) clone with wings
- [fzf][fzf] - 🌸 A command-line fuzzy finder
- [ripgrep][ripgrep] - ripgrep recursively searches directories for a regex pattern
- [jq][jq] - Command-line JSON processor
- [fd][fd] - A simple, fast and user-friendly alternative to 'find'

### Editor

- [Helix][helix] - A post-modern modal text editor.
- [NvChad][NvChad] - Blazing fast Neovim config providing solid defaults and a beautiful UI, enhancing your neovim experience. (requires Neovim installation)
- [Visual Studio Code][vscode] - Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

## Fonts

I use [JetBrains Mono][jetbrains-mono], a beautiful font specifically designed for developers. It boasts a wide range of exciting features, including ligatures and powerline symbols.

Additionally, I use the [Noto Sans Thai Looped][noto-sans-thai-looped] font for the Thai language.

For emojis, I rely on the [Apple Color Emoji for Linux][apple-emoji-linux] font to provide a wide selection of expressive emojis.

[eza]: https://github.com/eza-community/eza
[bat]: https://github.com/sharkdp/bat
[fzf]: https://github.com/junegunn/fzf
[ripgrep]: https://github.com/BurntSushi/ripgrep
[jq]: https://github.com/stedolan/jq
[fd]: https://github.com/sharkdp/fd
[helix]: https://github.com/helix-editor/helix
[NvChad]: https://github.com/NvChad/NvChad
[vscode]: https://aur.archlinux.org/packages/visual-studio-code-bin
[jetbrains-mono]: https://www.jetbrains.com/lp/mono/
[noto-sans-thai-looped]: https://fonts.google.com/noto/specimen/Noto+Sans+Thai+Looped
[apple-emoji-linux]: https://github.com/samuelngs/apple-emoji-linux
