function fish_greeting
    set -l toon (random choice {default,bud-frogs,dragon,dragon-and-cow,elephant,moose,stegosaurus,tux,vader})
    cat ~/.config/fish/functions/greeting.ascii | lolcat -t -F .2
end