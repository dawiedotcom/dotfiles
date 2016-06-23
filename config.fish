# Fish git prompt
set __fish_git_prompt_showdirtystate ''
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream ''
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'


function fish_prompt
  set last_status $status

  printf '%s@%s ' (whoami) (hostname)

  set_color normal
  printf '%s' (__fish_git_prompt "%s ")

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)

  set_color normal
  printf '> '

  set_color normal
end

# Variables
set -x LD_LIBRARY_PATH /usr/local/lib
