# launch jupyter notebook in background
alias jn="jupyter notebook &>/dev/null &"

# launch jupyterlab in background
alias jl="jupyter lab &>/dev/null &"

alias js="pkill jupyter"

# xelatex should always be batchmode
alias xelatex="xelatex -interaction=batchmode"

# deactivate has too many letters
alias dv="deactivate"

# i change bashrc and bash_aliases a lot
alias rebash="exec '$SHELL'"

# lock, suspend, shutdown from i3
alias lock="i3lock"
alias shutdown="systemctl poweroff"
alias sus="i3lock -c 000000 && systemctl suspend"

# use xdg-open to open a thing and pipe all stdout and stderr to /dev/null
o() { xdg-open "$1" &>/dev/null & }

# used to strip the characters leading up to the student ID in a python
# assignment filename downloaded from blackboard
bb-prefix() {
    case "$1" in
        "--preview" | "-p" ) rename -n -e 's/^.*([Zz][0-9]{7}).*(\.\w*)$/$1$2/' * >&1 ;;
        "--commit" | "-c") rename -e 's/^.*([Zz][0-9]{7}).*(\.\w*)$/$1$2/' * >&1 ;;
        *) echo "Usage: bb-prefix [ -p --preview | -c --commit ]" >&2 ;;
    esac
}

# typing out https://github.com/ every time I clone something is hard
glone() {
    git clone https://github.com/$1;
}

# typing out my own username is hard, see above
glome() {
    git clone https://github.com/cl3wis/$1;
}
