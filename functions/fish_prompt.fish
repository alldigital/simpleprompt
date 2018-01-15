# function fish_mode_prompt
#   # NOOP - Disable vim mode indicator
# end

set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_hide_untrackedfiles 1
set __fish_git_prompt_showupstream "informative"
set __fish_git_prompt_color_branch brcyan
set __fish_git_prompt_color_dirtystate brred
set __fish_git_prompt_color_stagedstate brblue
set __fish_git_prompt_color_untrackedfiles $fish_color_normal
set __fish_git_prompt_color_cleanstate brgreen
set __fish_git_prompt_color_invalidstate brred
set __fish_git_prompt_color_upstream_ahead brmagenta
set __fish_git_prompt_color_upstream_behind brmagenta

# # Status Chars
set __fish_git_prompt_char_untrackedfiles "…"
set __fish_git_prompt_char_dirtystate "✚"
set __fish_git_prompt_char_stagedstate '●'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_upstream_prefix ""
set __fish_git_prompt_char_conflictedstate "✖"
set __fish_git_prompt_char_cleanstate "✔"

set __fish_prompt_normal (set_color normal)

function fish_prompt --description 'Write out the prompt'
  set -l cyan (set_color -o brcyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  printf '%s' (string trim (__fish_vcs_prompt))
  echo -n -s (set_color cyan) " λ "
  set_color normal
end
