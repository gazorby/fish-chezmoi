function _fish_chezmoi_install --on-event fish_chezmoi_install
    _fish_chezmoi_uninstall
    set -U __fish_chezmoi_abbreviations
end

function _fish_chezmoi_update --on-event fish_chezmoi_update
    _fish_chezmoi_uninstall
    _fish_chezmoi_install
end

function _fish_chezmoi_uninstall --on-event fish_chezmoi_uninstall
    _fish_chezmoi_destroy
end

# Starting from fish 3.6.0, 'abbr' is a builtin and abbreviations are no longer stored
# in universal variables.
not builtin -q abbr; and set -q __fish_chezmoi_initialized; and return 0

_fish_chezmoi_init
