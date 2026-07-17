function _fish_chezmoi_destroy -d "Initialize fish_chezmoi plugin"
    for ab in $__fish_chezmoi_abbreviations
        abbr --erase $ab
    end
    set -Ue __fish_chezmoi_abbreviations
    set -Ue __fish_chezmoi_initialized
end
