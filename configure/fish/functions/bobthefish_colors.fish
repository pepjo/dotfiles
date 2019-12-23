function bobthefish_colors -S -d 'Define a custom bobthefish color scheme'

  # optionally include a base color scheme...
  # ___bobthefish_colors terminal

  # then override everything you want! note that these must be defined with `set -x`

  set colorfg black

  set -x color_initial_segment_exit     white red --bold
  set -x color_initial_segment_su       white green --bold
  set -x color_initial_segment_jobs     white blue --bold

  set -x color_path                     blue black
  set -x color_path_basename            blue black --bold
  set -x color_path_nowrite             magenta $colorfg
  set -x color_path_nowrite_basename    magenta $colorfg

  set -x color_repo                     green $colorfg
  set -x color_repo_work_tree           black $colorfg --bold
  set -x color_repo_dirty               brred $colorfg
  set -x color_repo_staged              yellow $colorfg

  set -x color_vi_mode_default          brblue $colorfg --bold
  set -x color_vi_mode_insert           brgreen $colorfg --bold
  set -x color_vi_mode_visual           bryellow $colorfg --bold

  set -x color_vagrant                  brcyan $colorfg
  set -x color_k8s                      magenta white --bold
  set -x color_username                 white black --bold
  set -x color_hostname                 white black
  set -x color_rvm                      brmagenta $colorfg --bold
  set -x color_virtualfish              brblue $colorfg --bold
  set -x color_virtualgo                brblue $colorfg --bold
  set -x color_desk                     brblue $colorfg --bold
end

