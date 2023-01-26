function _fish_chezmoi_install --on-event fish_chezmoi_install
    set -U __fish_chezmoi_abbreviations
    if not builtin -q abbr
        _fish_chezmoi_init
    end
end

function _fish_chezmoi_update --on-event fish_chezmoi_update
    _fish_chezmoi_uninstall
    _fish_chezmoi_install
end

function _fish_chezmoi_uninstall --on-event fish_chezmoi_uninstall
    for ab in $__fish_chezmoi_abbreviations
        abbr --erase $ab
    end
    set -Ue __fish_chezmoi_abbreviations
end

# Starting from fish 3.6.0, 'abbr' is a builtin and abbreviations are no longer stored
# in universal variables.
not builtin -q abbr; and set -q __fish_chezmoi_initialized; and return 0

_fish_chezmoi_init
