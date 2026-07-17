function _fish_chezmoi_abbr -d "Create chezmoi abbreviation"
    abbr -a $argv[1] $argv[2..-1]
    contains $argv[1] $__fish_chezmoi_abbreviations; or set -a __fish_chezmoi_abbreviations $argv[1]
end
