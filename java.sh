function list-java-versions() {
	if [[ $(uname -s) == "Darwin" ]]; then
		/usr/libexec/java_home -V
	else
		update-alternatives --list java | sed 's/\/usr\/lib\/jvm\///' | sed 's/\/bin\/java//' | sed 's/\/jre//'
	fi
}

function set-java-version() {
	new_version=$1
	if [ -z "$new_version" ]; then
		echo "You must choose the version you wish to change to"
		return 1
	fi
	if [[ $(uname -s) == "Darwin" ]]; then
		new_home=$(/usr/libexec/java_home -v $new_version)
		if [ -z "$new_home" ]; then
			echo "JDK not found: $new_version"
		else
			export JAVA_HOME=$new_home
			echo $new_home >~/.current-java-version
			echo "JAVA_HOME $new_home written to ~/.current-java-version."
			echo "You may need to refresh your terminal. Ensure you have 'export JAVA_HOME=\$(cat ~/.current-java-version)' in your .zshrc"
		fi
	else
		local java_versions=$(update-alternatives --list java)
		local choice=$(echo $java_versions | grep -m 1 $new_version)
		sudo update-alternatives --set java $choice
	fi
}

_java_version_completer() {
	if [[ $(uname -s) == "Darwin" ]]; then
		local java_versions=$(list-java-versions 2>&1 | grep -o '\d\+\.\d\+\.\d*_*\d*' | uniq | tr '\n' ' ')
	else
		local java_versions=$(list-java-versions)
	fi

	COMPREPLY=($(compgen -W "${java_versions}" -- "${COMP_WORDS[COMP_CWORD]}"))
}

complete -F _java_version_completer set-java-version
