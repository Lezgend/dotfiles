# Install Zsh

```sh
sudo pacman -S --noconfirm zsh
```

# Install the plugins

## Manual Installation (Git Clone)

**Fast Syntax Highlighting**

1. Clone the repository to your preferred directory. For example, I'll use `~/.zsh/fsh`:

```zsh
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.zsh/fsh
```

2. And add the following to your `zshrc` file.

```zsh
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
```

**Zsh Autosuggestions**

1. Clone the Zsh Autosuggestions repository to your desired location. I'll use `~/.zsh/zsh-autosuggestions`:

```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

2. Include the following line in your `.zshrc`.

```zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

**Zsh Autocomplete**

1. Clone the Zsh Autocomplete repository to your desired location. I'll use `~/.zsh/zsh-autocomplete`:

```zsh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
```

2. Add the following line at or near the top of your `.zshrc` file.

```zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
```

# References

- [Fast Syntax Highlighting (F-Sy-H)][zsh-fast-syntax-highlighting] - Feature-rich syntax highlighting for ZSH.
- [Zsh Autosuggestions][zsh-autosuggestions] - Fish-like autosuggestions for zsh.
- [Zsh Autocomplete][zsh-autocomplete] - 🤖 Real-time type-ahead completion for Zsh. Asynchronous find-as-you-type autocompletion.

[zsh-fast-syntax-highlighting]: https://github.com/zdharma/fast-syntax-highlighting
[zsh-autosuggestions]: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
[zsh-autocomplete]: https://github.com/marlonrichert/zsh-autocomplete
