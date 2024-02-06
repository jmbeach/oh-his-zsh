function get-outdated-brew-packages-minor() {
	local flag=$1
	local is_verbose=0
	[[ "$flag" == "-v" ]] && is_verbose=1
	brew outdated --verbose | while read line; do
		package=$(echo $line | awk '{print $1}')
		current_version=$(
			python3 <<EOF
import re
matches = re.findall(r'((\d+\w?[\.]?)+)\)', '$line')
if len(matches) < 1 or len(matches[0]) < 1:
  raise Exception("ERROR no match for current version: $line")
print(matches[0][0])
EOF
		)
		latest_version=$(
			python3 <<EOF
import re
matches = re.findall(r'[<=] ([\d\.]+)', '$line')
if len(matches) < 1:
  raise Exception("ERROR no match for latest version: $line")
print(matches[0])
EOF
		)
		current_major=$(echo $current_version | cut -d. -f1)
		latest_major=$(echo $latest_version | cut -d. -f1)
		# If the major versions are the same, then this is a minor upgrade
		if [[ "$current_major" == "$latest_major" ]]; then
			if [ "$is_verbose" -eq 1 ]; then
				echo $line
			else
				echo $package
			fi
		fi
	done
}

function upgrade-outdated-brew-packages-minor() {
	echo "Gathering package list..."
	declare -a package_list
	get-outdated-brew-packages-minor | while read package; do
		package_list+=("$package")
	done
	echo "Running brew upgrade $package_list"
	brew upgrade $package_list
}
