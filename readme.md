Simple template to keep all user settings in one repository. Useful to group, share, and keep track of the changes of user setting files.

## Instructions

After cloning the repository, use the `create-sym-link.sh` script to move the files to `settings` and create a symbolic link.

```bash
git clone https://github.com/Mytakeon/settings.git
cd settings
source create-sym-link.sh
```

# Usage

## Dot files/folders

For files typically located in the user folder, an example use would be:

```bash
cd ~
createLink .zshrc
# output: Created symlink from '.../settings/.zshrc' to '~/.zshrc'
createLink .aws  # Also works for directories
```

`ls -la ~` output before running `createLink`:

```
-rw-r--r--   1 user1  staff   3429 23 Dec 11:24 .zshrc
```

After:

```
lrwxr-xr-x   1 user1  staff     35 23 Dec 11:38 .zshrc -> /Users/user1/repos/settings/.zshrc
```

## VSCode

```bash
cd ~/Library/Application\ Support/Code/User/ # user settings path with default installation
createLink settings.json vscode # will be moved to settings/vscode
```

## Backups for programs that require a manual save/load operation

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

- Open settings -> General -> Preferences -> Click "Save current settings to folder"
- Open settings -> Profiles -> Select profile -> Click "Other actions" (bottom left) -> Click "Save profile as JSON"
