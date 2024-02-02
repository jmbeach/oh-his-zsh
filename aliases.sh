function cd() {
	builtin cd "$@"
	ls
}

function rm() {
	builtin rm "$@"
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
