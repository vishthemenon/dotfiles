## Defines abbreviations
function setup
    for abbreviation in (abbr -l)
        abbr -e $abbreviation
    end
    abbr g git
    abbr bi brew install
    abbr bic brew install --cask
    abbr ll ls -lhA
    abbr bs brew services
end
