export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

function rbenv_version() {
  rbenv version 2> /dev/null | sed 's/\([^ ]*\).*/(\1)/'
}

unset which_ruby
function which_ruby() {
  rbenv version 2> /dev/null | sed 's/\([^ ]*\).*/(\1)/'
}
