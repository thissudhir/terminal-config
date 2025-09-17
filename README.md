# Terminal Configuration

This repository contains the configuration files for a modern, powerful, and aesthetically pleasing terminal setup. It includes settings for `zsh`, `bash`, and the [Starship](https://starship.rs/) cross-shell prompt.

## Prerequisites

Before you begin, ensure you have a Nerd Font installed on your system. These fonts include extra glyphs and symbols that are required by Starship to render the prompt correctly.

We recommend [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads), but you can choose any font from the [Nerd Fonts](https://www.nerdfonts.com/font-downloads) website.

After installing a Nerd Font, make sure to configure your terminal emulator (e.g., Windows Terminal, iTerm2, GNOME Terminal) to use it.

## Installation and Configuration

Below are the instructions for setting up your terminal on different operating systems.

---

### macOS

macOS comes with `zsh` by default. You can use [Homebrew](https://brew.sh/) to install the necessary tools.

1.  **Install Starship:**

    ```sh
    brew install starship
    ```

2.  **Configure Zsh:**

    - Copy the `.zshrc` file from this repository to your home directory:
      ```sh
      cp .zshrc ~/.zshrc
      ```
    > **Warning:** The `cp` command will overwrite your existing `.zshrc` file. If you have a `.zshrc` file that you want to keep, make a backup first, and then merge the contents of the two files.
    - Add the following line to the end of your `~/.zshrc` to initialize Starship:
      ```sh
      eval "$(starship init zsh)"
      ```

3.  **Configure Starship:**

    - Copy the `starship.toml` file from this repository to `~/.config/`:
      ```sh
      mkdir -p ~/.config
      cp starship.toml ~/.config/starship.toml
      ```

4.  **Install Zsh Plugins:**
    The `.zshrc` is configured to use `zsh-syntax-highlighting` and `zsh-autosuggestions`. You can install them with these commands:

    ```sh
    mkdir -p ~/.zsh-plugins
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-plugins/zsh-autosuggestions
    ```

5.  **Restart your terminal** to apply the changes.

---

### Linux

These instructions are for Debian/Ubuntu-based distributions. For other distributions, use the appropriate package manager (`dnf`, `pacman`, etc.).

1.  **Install Zsh and Starship:**

    ```sh
    sudo apt update
    sudo apt install zsh curl
    curl -sS https://starship.rs/install.sh | sh
    ```

2.  **Set Zsh as your default shell:**

    ```sh
    chsh -s $(which zsh)
    ```

    You will need to log out and log back in for this change to take effect.

3.  **Configure Zsh:**

    - Copy the `.zshrc` file from this repository to your home directory:
      ```sh
      cp .zshrc ~/.zshrc
      ```
    - The `starship init` command should have been added to your `.zshrc` automatically by the installer. If not, add this line to the end of your `~/.zshrc`:
      ```sh
      eval "$(starship init zsh)"
      ```

4.  **Configure Starship:**

    - Copy the `starship.toml` file from this repository to `~/.config/`:
      ```sh
      mkdir -p ~/.config
      cp starship.toml ~/.config/starship.toml
      ```

5.  **Install Zsh Plugins:**

    ```sh
    mkdir -p ~/.zsh-plugins
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-plugins/zsh-autosuggestions
    ```

6.  **Restart your terminal** to apply the changes.

---

### Windows

For Windows, we recommend using [Windows Terminal](https://aka.ms/terminal) with PowerShell or Windows Subsystem for Linux (WSL).

#### PowerShell

1.  **Install Starship:**
    You can use `winget`, `scoop`, or `choco`.

    ```powershell
    # using winget
    winget install starship

    # using scoop
    scoop install starship
    ```

2.  **Configure PowerShell:**

    - Open your PowerShell profile script:
      ```powershell
      notepad $PROFILE
      ```
    - Add the following line to the end of the file:
      ```powershell
      Invoke-Expression (&starship init powershell)
      ```

3.  **Configure Starship:**

    - Create the `.config` directory and copy the `starship.toml` file:
      ```powershell
      mkdir -p ~/.config
      cp starship.toml ~/.config/starship.toml
      ```

4.  **Restart your terminal** to apply the changes.

#### Windows Subsystem for Linux (WSL)

If you are using WSL, follow the **Linux** instructions above within your WSL distribution.

---

### Bash Configuration

If you prefer to use `bash`, you can still use Starship.

1.  **Configure Bash:**

    - Copy the `.bashrc` file from this repository to your home directory:
      ```sh
      cp .bashrc ~/.bashrc
      ```
    - Add the following line to the end of your `~/.bashrc`:
      ```sh
      eval "$(starship init bash)"
      ```

2.  **Configure Starship:**

    - Follow the Starship configuration steps for your OS to copy the `starship.toml` file.

3.  **Restart your terminal** to apply the changes.
