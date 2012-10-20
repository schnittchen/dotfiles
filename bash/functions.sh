# Set Tab title
function tt(){
  if [ "x$TMUX" != 'x' ]
  then
    tmux rename-window $*
  else
    echo -ne "\033]0;$*\007"
  fi
}

function watchgitrepo(){
  watch '~/.rvm/bin/rvm-prompt; echo `pwd`; echo; git st -s -b'
}
