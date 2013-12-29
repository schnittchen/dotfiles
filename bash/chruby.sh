[ -e /usr/local/share/chruby/chruby.sh ] || return

source /usr/local/share/chruby/chruby.sh

function which_ruby(){
  chruby | grep \* | cut -b 4-
}
