# dotfiles

## About

### What's inside?

    .
    ├── install.sh						# Moves / Symlinks Dotfiles & Folders into Filesystem                   
    ├── bin                   
    │   ├── .alias            # Rename Commands / Set Default Parameters
    │   ├── .funcs            # Custom Functions
    │   ├── .path             # Configure $PATH
    │   ├── .projects         # Project File Structure
    │   ├── .prompt           # Command Line Prompt Configuration
    │   ├── .ssh-setup        # SSH Agent & SSH Keys Setup
    │   ├── .tmux.conf        # tmux Configuration
    │   ├── .urls             # URLs
    │   ├── .vars             # Misc. Environment Variables
    │   ├── .zprofile         # zsh Profile Configuration
    │   ├── .zshrc            # zsh Session Configuration
    ├── git                   
    │   ├── .gitconfig        # Git Configuration
    │   ├── .githooks
    │   │   ├── hooks         # Functions to run during Git commit/push/etc.
    └── README.md							# The file you're reading right now!


**Installing**
```console
$ chmod +x install.sh
$ ./install.sh
```
