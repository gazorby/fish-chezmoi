function _fish_chezmoi_abbr -d "Create chezmoi abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __fish_chezmoi_abbreviations $name
end
