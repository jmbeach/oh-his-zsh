function get-mergeconflict-files() {
	git diff --name-only --diff-filter=U --relative | cat
}

function pull-master-no-checkout() {
	branch_name=$(get-git-default-branch)
	git fetch origin $branch_name:$branch_name
}

function get-git-default-branch() {
	git remote show origin | sed -n '/HEAD branch/s/.*: //p'
}
