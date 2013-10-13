set fish_git_dirty_color red
function parse_git_dirty 
         git diff --quiet HEAD ^&-
         if test $status = 1
            echo (set_color $fish_git_dirty_color)
     else
        echo (set_color brown)
         end
end
function parse_git_branch
         # git branch outputs lines, the current branch is prefixed with a *
         set -l branch (git branch --no-color ^&- | awk '/*/ {print $2}') 
         echo $branch (parse_git_dirty)     
end

function fish_prompt
     set is_git_repo (git branch --quiet 2> /dev/null)
         if test -n "$is_git_repo"
            printf '%s@%s »%s%s%s:%s%s%s» ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_dirty) (parse_git_branch) (set_color normal)
         else
            printf '%s@%s » %s%s%s » '  (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
         end 
end

setenv KDE_COLOR_DEBUG true
setenv KDE_DEBUG_NOPROCESSINFO 1
setenv QT_PLUGIN_PATH /usr/lib/kde4/plugins
echo $PATH |grep ~/install > /dev/null
if test $status -eq 1
    setenv KDEDIRS $KDEDIRS ~/install
end
echo $PATH |grep ~/install/bin > /dev/null
if test $status -eq 1
    setenv PATH $PATH ~/install/bin
end
setenv PKG_CONFIG_PATH /home/sven/install/lib/pkgconfig
setenv XDG_DATA_DIRS $XDG_DATA_DIRS ~/install/share
