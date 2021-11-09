# Dotfiles

Based on `github.com/rkalis/dotfiles.git`
## Usage
1. Generate new SSH keys and add them to your GitHub account
    1. Alternatively, restore your safely backed up SSH keys to `~/.ssh/`
2. Install Homebrew and git
  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository
  ```bash
  git clone git@github.com:vishthemenon/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
5. (Optional) Point the Alfred preference sync to a backed up folder
6. Login to applications, enter license keys, set preferences

## Customisation
I strongly encourage you to play around with the configurations, and add or remove features.
If you would like to use these dotfiles for yourself, I'd recommend changing at least the following:

#### Git
* The .gitconfig file includes my [user] config, replace these with your own user name and email

#### OSX
* At the top of the setup.sh file, my computer name is set, replace this with your own computer name

#### Packages
This folder is a collection of the programs and utilities I use frequently. These lists can easily be amended to your liking.

#### Repos
This folder is a collection of my own repos, some of which are even private. The existing lists can easily be edited or replaced by custom lists.

## Contents
### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* imgcat - A utility to display images inline in iTerm 2
* sethidden - A shell script which takes command line arguments to show or hide
hidden files
* togglehidden - A shell script that toggles between showing and hiding hidden
files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration (.fishrc)
* fishfile - List of `fisher` plugins
* completions/
  * repo.fish - Contains all repos as completions for the `repo` command
  * repodir.fish - Contains all repos as completions for the `repodir` command
* functions/
  * abbrex.fish - Utility for expanding abbreviations in fish-scripts
  * clear.fish - Clears the screen and shows fish_greeting
  * emptytrash.fish - Empties trash and clears system logs
  * enter_service.fish - Enter a Docker swarm service
  * fish_greeting.fish - Fish greeting with fish logo
  * fish_prompt.fish - The Classic + Git prompt from the fish web config
  * fisher.fish - Fish plugin manager
  * forrepos.fish - Executes a passed command for all repos in `~/repos`
  * git.fish - Alias to GitHub's `hub` utility
  * ls.fish - Calling ls with parameter --color=auto
  * manp.fish - Open a man page in Preview
  * mvnpurge.fish - Purge local mvn repository
  * proxy.fish - Open a proxy to my server
  * pubkey.fish - Copies the SSH public key to the clipboard
  * repo.fish - Finds a repository in `~/repos` and jumps to it
  * repodir.fish - Finds a repository in `~/repos` and prints its path
  * setup.fish - Initial setup for a new fish installation,
  contains abbreviations
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew,
  npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
* .gitconfig - Sets several global Git variables

### Hammerspoon (hammerspoon/)
* setup.sh - Symlinks all lua and AppleScript files to `~/.hammerspoon/`
* init.lua - Contains the main Hammerspoon config, importing the others
* bluetooth.lua - Toggles Bluetooth headset connection
* caffeinate.lua - Shortcuts for managing screen state (locking, etc.)
* connect_sony.applescript - Toggles Bluetooth headset connection
* hyper.lua - Binds the "F18" key to a Hyper mode, which can be used for
global commands
* minimising.lua - Shortcuts for minimising and unminimising windows
* shortcuts.lua - Hyper key bindings to existing shortcuts
* spectacle.lua - Window and monitor management using hyper mode

### Karabiner (karabiner/)
* setup.sh - Symlinks Karabiner settings to `~/.config/karabiner`
* karabiner.json - Binds the CAPS LOCK key to "F18" to use with hammerspoon

### macOS Preferences (macos/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Repositories (repos/)
* setup.sh - Clones the repositories in the .list files at the corresponding
locations

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing
  progress messages
