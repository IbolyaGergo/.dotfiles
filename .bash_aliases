# Set colored aoutput for diff
# --strip-trailing-cr will ignore ^M at the end of line
alias diff='diff --color=always'

# Render colors
alias less='less -R'

alias zathura='zathura --fork'

# Edit python files excluding dotfiles and ./envs/
alias ped='vim $(find . -name "[^_]*.py" -not -path "./envs/*" -not -path "*/.*")'
