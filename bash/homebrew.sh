export PATH=/usr/local/bin:$PATH
export MANPATH=/usr/local/share/man:$MANPATH
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
