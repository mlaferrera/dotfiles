gpg-agent &> /dev/null  
if [ "$?" -ne "0" ]; then  
  gpg-agent --daemon &> /dev/null
fi

if [ -f "${HOME}/.gpg-agent-info" ]; then  
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
  export SSH_AGENT_PID
fi  
export GPG_TTY=$(tty) 
