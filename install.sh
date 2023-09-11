#!/usr/bin/env bash

# Install command-line tools using Yet another Yogurt (yay).

# Check if Yay is installed
if command -v yay &> /dev/null; then
  echo "Starting..."
else
  echo "Yay is not installed. Please install Yay first."
  exit 1
fi

# Function to install packages from an array.
install_packages() {
  for pkg in "${@}"; do
    yay -S --noconfirm "$pkg"
    if [[ $? -ne 0 ]]; then
      echo "Failed to install $pkg."
    fi
  done
}

# Update Yay and the system.
echo "Updating Yay and the system..."
yay -Syu

# Install fonts.
echo "Installing fonts..."
fonts_packages=("ttf-th-sarabun-new" "noto-fonts" "ttf-nerd-fonts-symbols" "ttf-jetbrains-mono")
install_packages "${fonts_packages[@]}"

# Install utility packages.
echo "Installing utility packages..."
utility_packages=("neofetch" "htop" "btop" "strace" "thefuck")
install_packages "${utility_packages[@]}"

# Install editor (IDE) packages.
echo "Installing editor (IDE) packages..."
editor_packages=("helix" "neovim" "visual-studio-code-bin")
install_packages "${editor_packages[@]}"

# Install network tools.
echo "Installing network tools..."
network_packages=("nmap" "gnu-netcat" "curl" "wget")
install_packages "${network_packages[@]}"

# Install useful packages.
echo "Installing useful packages..."
useful_packages=("eza" "bat" "fzf" "ripgrep" "jq" "fd")
install_packages "${useful_packages[@]}"

# Install shell prompt packages.
echo "Installing shell prompt packages..."
shell_prompt_packages=("kitty" "zsh" "starship")
install_packages "${shell_prompt_packages[@]}"

# Install application.
echo "Installing application..."
app_packages=("nvidia-inst" "spotify" "steam" "lutris" "discord" "telegram-desktop" "libreoffice-fresh-th" "gnome-browser-connector" "qbittorrent" "mpv")
install_packages "${app_packages[@]}"

echo "Installation of packages complete."

# Install Nvidia drivers (if needed).
nvidia-inst

### -------------------------------------------------- ###

# Download and install Apple fonts.
echo "Downloading and installing fonts..."

font_data=(
  "https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf AppleColorEmoji.ttf"
  "https://raw.githubusercontent.com/Austcool-Walker/San-Francisco-Pro/main/SF-Pro-Rounded-Regular.ttf SF-Pro-Rounded-Regular.ttf"
)

font_destination="$HOME/.local/share/fonts/"

# Download and install fonts.
echo "Downloading and installing fonts..."

for data in "${font_data[@]}"; do
  url="${data%% *}"
  filename="${data##* }"
  destination="$font_destination$filename"

  wget -q "$url" -O "$destination" && echo "Font installed: $destination" || echo "Failed to install font from $url"
done

# Update font cache.
echo "Updating font cache..."
fc-cache -fv

### -------------------------------------------------- ###

# Change default shell to Zsh.
echo "Changing default shell to Zsh..."
if sudo chsh "$USER" -s /bin/zsh; then
  echo "Shell changed successfully. Please start a new terminal session to apply changes."
else
  echo "Failed to change the default shell."
fi

# Clone zsh-autosuggestions and zsh-syntax-highlighting.
echo "Cloning zsh-autosuggestions and zsh-syntax-highlighting..."
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.zsh/fsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete

echo "Please start a new terminal session to apply changes."

### -------------------------------------------------- ###
