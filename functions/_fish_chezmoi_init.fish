function _fish_chezmoi_init -d "Create chezmoi abbreviation"
    _fish_chezmoi_abbr cm chezmoi
    _fish_chezmoi_abbr cma 'chezmoi add'
    _fish_chezmoi_abbr cmap 'chezmoi apply'
    _fish_chezmoi_abbr cmea 'chezmoi edit --apply'
    _fish_chezmoi_abbr cmu 'chezmoi update'
    _fish_chezmoi_abbr cmd 'chezmoi diff'

    # Mark plugin as initialized
    set -U __fish_chezmoi_initialized 1
end
