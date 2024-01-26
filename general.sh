function join() {
	input=$(cat)
	seperator=$1
	if [ -z "$seperator" ]; then
		seperator=" "
	fi

	to_replace=""
	length=${#seperator}
	for ((i = 0; i < length; i++)); do
		to_replace="${to_replace}."
	done

	echo $input | awk '{print}' ORS="$seperator" | sed '$s/'"$to_replace"'$//'
	echo ""
}
