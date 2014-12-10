[ -e /usr/local/share/chruby/chruby.sh ] || return

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# My prompt uses this. It falls back when the function does not exist.
function which_ruby(){
  chruby | grep \* | cut -b 4-
}
