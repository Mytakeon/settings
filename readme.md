Simple template to keep all user settings in one repository. Useful to group, share, and keep track of the changes of user setting files.

## Instructions
After cloning the repository, use the `create-sym-link.sh` script to move the files and create a symbolic link.
```bash 
git clone https://github.com/Mytakeon/settings.git
source settings/create-sym-link.sh

# dot files
cd ~ 
createLink .zshrc
createLink .aws  # Also works for directories

# VSCode
cd  ~/Library/Application\ Support/Code/User/ # user settings path with default installation
createLink settings.json
```
---
Backups for programs that require a manual save/load operation:
### Brew

```bash
brew tap Homebrew/bundle  # install brew bundle
cd .../settings/dotfiles/
brew bundle dump  # Creates Brewfile
...
brew bundle  # Install packages from Brewfile
```

[Credits](https://tomlankhorst.nl/brew-bundle-restore-backup/)


### Iterm2

* Open settings -> General -> Preferences -> Click "Save current settings to folder"
* Open settings -> Profiles -> Select profile -> Click "Other actions" (bottom left) -> Click "Save profile as JSON"
