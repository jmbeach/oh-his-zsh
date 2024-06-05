# rm parallel
function rmp() {
	if [[ -z "$1" ]]; then
		echo "Error: Please provide a path to delete" >&2
		return 1
	fi

	# Safety check
	if [[ "$1" == "/" ]]; then
		echo 'Error: Cannot delete root directory'
	fi

	echo "Deleting files under '$1' in parallel"
	find "$1" -mindepth 1 -print0 | xargs -0 rm -rf

	# Remove the now empty folder
	rm -d "$1"
}
