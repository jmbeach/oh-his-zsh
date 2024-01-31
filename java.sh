function list-java-versions() {
	/usr/libexec/java_home -V
}

function set-java-version() {
	new_version=$1
	if [ -z "$new_version" ]; then
		echo "You must choose the version you wish to change to"
		return 1
	fi
	new_home=$(/usr/libexec/java_home -v $new_version)
	if [ -z "$new_home" ]; then
		echo "JDK not found: $new_version"
	else
		export JAVA_HOME=$new_home
	fi
}
_java_version_completer() {
	local java_versions=$(list-java-versions 2>&1 | grep -o '\d\+\.\d\+\.\d*_*\d*' | uniq | tr '\n' ' ')
	COMPREPLY=($(compgen -W "${java_versions}" -- "${COMP_WORDS[COMP_CWORD]}"))
}
complete -F _java_version_completer set-java-version
