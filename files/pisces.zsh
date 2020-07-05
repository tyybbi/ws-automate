# My prompt

# Show Git info in prompt when in repository directory
zstyle ':vcs_info:*' stagedstr 'M' 
zstyle ':vcs_info:*' unstagedstr 'M' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git 
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[unstaged]+='%F{1}??%f'
  fi  
}
precmd () { vcs_info }

PR_NO_COLOR="%{$terminfo[sgr0]%}"
local RETURN_CODE="%(?..%{:$fg[red]%}%?%{$PR_NO_COLOR%})"

# Actual prompt here
PROMPT='$PR_LIGHT_GREEN!%h$PR_NO_COLOR${RETURN_CODE}$PR_NO_COLOR:$PR_BLUE%~${vcs_info_msg_0_}%f$PR_NO_COLOR%(!.#.$) '

