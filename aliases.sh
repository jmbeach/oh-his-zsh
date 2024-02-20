function cd() {
	builtin cd "$@"
	ls
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
	COLUMNS=3 command ls -C --color=auto
}
