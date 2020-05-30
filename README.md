# dotfiles

This repository contain the dotfiles for my linux configuration. The setup follows the structure described [here](https://www.atlassian.com/git/tutorials/dotfiles).

To setup this configuration in a new system, use:

```bash
cd $HOME
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore # for recursion problems
git clone --bare https://github.com/2ar0n/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```

If the `config checkout` step fails, check remove any existing files in you `$HOME` directory that would be overwritten by a file in the repo.

And add this to the end of the `.bashrc`:

```bash
# source my bash env
if [ -f ~/.bash_local ];then
    source ~/.bash_local
fi
```

## Dependencies

```bash
sudo pacman -S firefox spotify redshift polybar python-pywal rofi
```
