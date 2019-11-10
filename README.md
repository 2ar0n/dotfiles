# dotfiles

This repository contain the dotfiles for my linux configuration.
The setup follows this [structure](https://news.ycombinator.com/item?id=11071754).

To clone, use:

```bash
git clone --separate-git-dir=$HOME.myconf /path/to/repo $HOME/myconf-tmp
cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
rm -r ~/myconf-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```

And add this to the end of the `.bashrc`:

```bash
# source my bash env
if [ -f ~/.bash_local ];then
    source ~/.bash_local
fi
```