# Set Tab title
function tt(){
  if [ "x$TMUX" != 'x' ]
  then
    tmux rename-window "$*"
  else
    echo -ne "\033]0;$*\007"
  fi
}
