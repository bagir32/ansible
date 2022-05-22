#!/usr/bin/bash

declare -r PASSWD_FILE=/etc/passwd

user_exist() {
    local u=$1
    local a="test"
    grep -Eqw "^$u" $PASSWD_FILE && die "User Exist" 3
}

die() {
    local message="$1"
    local exitCode=$2
    echo "$message"
    [ "$exitCode" == "" ] && exit 1 || exit $exitCode
}
#user_exist $1

user_root() {
    [ "$(id -u)" != "0" ] && die "you are not root" 5
}

#user_root

usage() {
    echo "Usage: sudo $0 username"
    exit 2
}



#echo $#
[ $# -eq 0 ] && usage
user_root
user_exist $1
echo $a
echo "adding user $1 to the system...."
echo "sudo useradd -s /usr/bin/bash -d /home/$1 $1"


