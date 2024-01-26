function join() {
	seperator=$1
	if [ -z "$seperator" ]; then
		seperator=" "
	fi

	local first=true
	local line

	while IFS= read -r line; do
		if [ "$first" = true ]; then
			first=false
			printf %s "$line"
		else
			printf %s "$seperator$line"
		fi
	done
	echo ""
}
