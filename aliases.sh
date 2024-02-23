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
	if [[ $(uname -s) == "Darwin" ]]; then
		LC_COLLATE=en_US.utf8 gls -C -w 3 --color=auto \
			--group-directories-first
	else
		LC_COLLATE=en_US.utf8 command ls -C -w 3 --color=auto \
			--group-directories-first
	fi
}
