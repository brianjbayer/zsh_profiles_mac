###################################
# Z shell for MacOS profile
###################################


### ALIASES ###
alias lsa='ls -al '
alias cls='clear '

# Git Aliases
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gcm='git commit -m '
alias gd='git diff '
alias go='git checkout '
alias gs='git status '
alias golo='git log '


# Put version managers (e.g. rbenv) here


### PATHS ###
# I got nothing yet

### PROMPT ###
# Zshell specific includes git branch in prompt
# Simple function to get the git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export -f parse_git_branch
# NOTE: PROMPT_SUBST must be set for variable/special character
# expansion
setopt PROMPT_SUBST
# Prompt:username@shorthostname currentdirectoryonly (gitbranchname)% 
export PROMPT='%n@%m %1~%F{green}$(parse_git_branch)%f%# '
