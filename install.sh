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
ansible --version &> /dev/null
if [[ "$?" == "0" ]]; then
	echo "Ansible version $(ansible --version) installed."

elif [[ "$?" != "0" ]]; then

	echo "Installing ansible for ${OS}..."

	if [[ "${OS}" == "osx" ]]; then

		echo "Processing dependencies for ansible.."
		cc --version
		if [[ "$?" != "0" ]]; then
			echo "Please install Xcode and rerun bootstraping script!"
			exit 1
		fi

		brew --version &> /dev/null
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

		ln -vs /usr/local/bin/python{3,}
		ln -vs /usr/local/bin/pip{3,}

		pip --version &> /dev/null
		if [[ "$?" != "0" ]]; then
			echo "Installing pip..."
			python -m easy_install pip
		fi
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

		sudo yum install -y epel-release
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi
		sudo yum install -y ansible
		if [[ "$?" != "0" ]]; then echo "terminating!" ; exit $?; fi


	else
		echo "Unable to determine OS type: ${OS}"
		echo "Terminating!"
		exit 1

	fi # OS

fi # !ansible


echo "Applying bootstrap.yaml with ansible..."
ansible-playbook -i <(<<<"localhost ansible_connection=local") bootstrap.yaml ${*}
if [[ "$?" != "0" ]]; then
	RC="$?"
	echo "ansible provisioning exited with return code $?"
else
	RC="0"
fi

exit $RC
