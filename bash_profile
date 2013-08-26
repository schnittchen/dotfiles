# MacOS tries to be clever by providing a configurable PATH population mechanism
# (see path_helper(8)). This apparently breaks "rbenv init -" on nested shells
# (tmux!), because rbenv only checks for presence of its path, where path_helper
# has prepended system paths in the mean time.
if [ -x /usr/libexec/path_helper ]; then
  # start with a clean slate
  PATH=""
  eval `/usr/libexec/path_helper -s`
fi

#C locale
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# for colorful ls output
export CLICOLOR="cons25"

export TERM=xterm-256color

shopt -s histappend

for file in ~/.bash/{prompt,aliases,homebrew,functions,rbenv,npm}.sh; do
  [ -r "$file" ] && source "$file"
done
unset file

export EDITOR=vim
export BUNDLER_EDITOR=subl
#we can make this clever one day...
export CDPATH=":~/development/:~/development/ruby"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export PATH=~/bin:$PATH
