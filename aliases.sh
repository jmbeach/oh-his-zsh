next_pwd='~'
function cd() {
    builtin cd "$@"
    next_pwd=$PWD
}

function rm() {
    command rm "$@"
    ls
}

function mkdir() {
    command mkdir "$@"
    ls
}

function mv() {
    command mv "$@"
    ls
}

function ls() {
    if [[ $(uname -s) == "Darwin" ]]; then
        LC_COLLATE=en_US.utf8 gls -C -w 3 --color=auto \
            --group-directories-first \
            "$@"
    else
        LC_COLLATE=en_US.utf8 command ls -C -w 3 --color=auto \
            --group-directories-first \
            "$@"
    fi
}

function fd() {
    if [[ $(uname -s) == "Darwin" ]]; then
        command fd "$@"
    else
        fdfind "$@"
    fi
}

function say() {
    if uname -r | grep -qE "(Microsoft|WSL)"; then
        local text=$(echo $1 | sed "s/'/\''/")
        powershell.exe -NoProfile -Command \
            "Add-Type -AssemblyName System.speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text')"
    else
        command say "$@"
    fi
}

function prevd() {
    builtin cd $OLDPWD
    zle accept-line
}
zle -N prevd
function nextd() {
    cd $next_pwd
    zle accept-line
}
zle -N nextd
function bindable-ls() {
    ls
    zle accept-line
}
zle -N bindable-ls
