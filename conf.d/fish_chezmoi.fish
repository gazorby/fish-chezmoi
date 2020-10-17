abbr -a cm 'chezmoi'
abbr -a cma 'chezmoi add'
abbr -a cmap 'chezmoi apply'
abbr -a cmu 'chezmoi update'


function __fish_chezmoi_uninstall --on-event fish_chezmoi_uninstall
    abbr --erase cm
    abbr --erase cma
    abbr --erase cmap
    abbr --erase cmu
end
