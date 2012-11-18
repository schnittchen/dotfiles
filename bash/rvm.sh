if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm"

  unset which_ruby
  function which_ruby() {
    echo '~/.rvm/bin/rvm-prompt'
  }
fi