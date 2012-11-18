if [ `type -t which_ruby`"" != 'function' ]; then
  function which_ruby(){
    return
  }
fi

function set_short_prompt(){
  export PRE_PROMPT='\[\033[01;34m\]\W\[\033[00m\]'
}

function set_long_prompt(){
  export PRE_PROMPT="\[\033[01;34m\]\$(which_ruby) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\")"
}

function my_prompt_command {
  EXITSTATUS="$?"

  BOLD="\[\033[1m\]"
  RED="\[\033[1;31m\]"
  GREEN="\[\e[32;1m\]"
  BLUE="\[\e[34;1m\]"
  OFF="\[\033[m\]"

  # ensure PRE_PROMPT is set
  if [ "x${PRE_PROMPT}" == "x" ]
  then
    set_long_prompt
  fi

  if [ "${EXITSTATUS}" -eq 0 ]
  then
     PS1="${PRE_PROMPT} ${BOLD}${GREEN}✓${OFF} "
  else
     PS1="${PRE_PROMPT} ${BOLD}${RED}[${EXITSTATUS}] ✘${OFF} "
  fi
}
PROMPT_COMMAND=my_prompt_command

if [ "x$TMUX" != 'x' ]
then
  set_short_prompt
else
  set_long_prompt
fi
