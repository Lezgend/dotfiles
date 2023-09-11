#!/usr/bin/env bash

# Define the target directory
target_dir="$HOME/Downloads"

# Function to clone a repository and run its installation script
clone_and_install() {
    local repo_url="$1"
    local install_script="$2"
    local clone_dir="$3"
    local extra_params="$4"

    # Navigate to the target directory
    cd "$target_dir" || { echo "Failed to navigate to $target_dir"; exit 1; }

    # Check if the directory already exists
    if [ -d "$clone_dir" ]; then
        echo "Directory $clone_dir already exists. Skipping cloning."
    else
        # Clone the repository
        git clone "$repo_url" "$clone_dir" || { echo "Failed to clone $repo_url"; exit 1; }
    fi

    # Navigate to the repository directory
    cd "$clone_dir" || { echo "Failed to enter the directory of $clone_dir"; exit 1; }

    # Run the installation script with optional parameters
    "./$install_script" $extra_params || { echo "Failed to run the installation script for $repo_url"; exit 1; }
}

# Clone and install WhiteSur GTK theme with specific parameters
clone_and_install "https://github.com/vinceliuice/WhiteSur-gtk-theme.git" "install.sh" "WhiteSur-gtk-theme" "--nord -l -i arch -t green -c Dark -m -p 60 -P bigger -N glassy --round --right -HD"

# Clone and install WhiteSur icon theme without additional parameters
clone_and_install "https://github.com/vinceliuice/WhiteSur-icon-theme.git" "install.sh" "WhiteSur-icon-theme" "-b"

# Clone and install Sunity cursors without extra parameters
clone_and_install "https://github.com/alvatip/Sunity-cursors.git" "install.sh" "Sunity-cursors"

# Optionally, remove the cloned repositories if needed
# cd "$target_dir" && rm -rf "WhiteSur-gtk-theme" "WhiteSur-icon-theme" "Sunity-cursors"