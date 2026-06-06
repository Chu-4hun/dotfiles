# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git & Stow

```
sudo apt-get install -y git stow
```


## Installation

First, check out the dotfiles repo in your $HOME directory using git
then use GNU stow to create symlinks

```
git clone https://github.com/Chu-4hun/dotfiles.git
cd dotfiles
stow .
```
