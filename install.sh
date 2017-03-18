#!/bin/bash
#
# Bootstrapping with ansible
#


# OS detection
OS="unknown"
if [[ "Darwin" == "$(uname)" ]]; then
	OS="osx"
elif [[ "Linux" == "$(uname)" ]]; then
	if [[ "debian" == "$(cat /etc/*release | grep "ID_LIKE" | head -1 | awk -F'=' '{print $NF}' | sed 's/\"//g')" ]]; then
		OS="debian"
	elif [[ "rhel fedora" == "$(cat /etc/*release | grep "ID_LIKE" | head -1 | awk -F'=' '{print $NF}' | sed 's/\"//g')" ]]; then
		OS="centos"
	fi
fi

# Check if ansible is installed and callable
ansible --version > /dev/null
if [[ "$?" != "0" ]]; then

	echo "Installing ansible for ${OS}..."

	if [[ "${OS}" == "osx" ]]; then 

		echo "Processing dependencies for ansible.."
		cc --version
		if [[ "$?" != "0" ]]; then
			echo "Please install Xcode and rerun bootstraping script!"
			exit 1
		fi

		brew --version > /dev/null
		if [[ "$?" != "0" ]]; then
			echo "Installing homebrew..."
			/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi
		brew update
		brew doctor
		if [[ "$?" != "0" ]]; then
			echo "brewing may become a problem, if kegs not roling - revise doctors orders."
		fi

		brew install python
		pip install --upgrade pip
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi
		pip install ansible
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi


	elif [[ "${OS}" == "debian" ]]; then

		easy_install pip
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi
		pip install --upgrade pip
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi
		pip install ansible
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi

	elif [[ "${OS}" == "centos" ]]; then

		yum install -y epel-release
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi
		yum install -y ansible
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi


	else
		echo "Unable to determine OS type: ${OS}"
		echo "Terminating!"
		exit 1

	fi # OS

fi # !ansible


echo "Applying bootstrap.yaml with ansible..."
TMPINV="$(echo ~/tmp_bootstrap_inventory)"
echo "Creating temp inventory file: \"${TMPINV}\""
echo "localhost		ansible_connection=local" > $TMPINV

ansible-playbook -i ${TMPINV} bootstrap.yaml ${*}

# Cleanup
echo "Clening up..."
echo -n "Removing temp inventory file: "
rm -v $TMPINV

