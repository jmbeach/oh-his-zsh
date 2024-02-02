function cd() {
	builtin cd "$@"
	ls
}

function rm() {
	builtin rm "$@"
	ls
}

function mkdir() {
	builtin mkdir "$@"
	ls
}

function mv() {
	builtin mv "$@"
	ls
}
