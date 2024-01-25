function get-mergeconflict-files() {
	git diff --name-only --diff-filter=U --relative | cat
}
