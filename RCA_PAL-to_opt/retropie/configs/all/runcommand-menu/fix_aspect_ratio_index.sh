#!/bin/bash
ra_version=$(/opt/retropie/emulators/retroarch/bin/retroarch --version 2>&1 > /dev/null)
ra_version=${ra_version//[!0-9.]/}

vercomp () {
    if [[ $1 == $2 ]]
    then
        return 0
    fi
    local IFS=.
    local i ver1=($1) ver2=($2)
    # fill empty fields in ver1 with zeros
    for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
    do
        ver1[i]=0
    done
    for ((i=0; i<${#ver1[@]}; i++))
    do
        if [[ -z ${ver2[i]} ]]
        then
            # fill empty fields in ver2 with zeros
            ver2[i]=0
        fi
        if ((10#${ver1[i]} > 10#${ver2[i]}))
        then
            return 1
        fi
        if ((10#${ver1[i]} < 10#${ver2[i]}))
        then
            return 2
        fi
    done
    return 0
}

testvercomp () {
    vercomp $1 $2
    case $? in
        0) op='=';;
        1) op='>';;
        2) op='<';;
    esac
    if [[ $op != $3 ]]
    then
        echo "FAIL: Expected '$3', Actual '$op', Arg1 '$1', Arg2 '$2'"
    else
        echo "Pass: '$1 $op $2'"
    fi
}

if testvercomp "$ra_version" "1.7.4" "<" | grep Pass > /dev/null
then
    echo 1.7.3 or lower, changing to aspect_ratio_index = "22"
    sed -i 's/aspect_ratio_index = "23"/aspect_ratio_index = "22"/' /opt/retropie/configs/*/retroarch*.cfg
    echo done.
else
    echo 1.7.4 or superior, changing to aspect_ratio_index = "23"
    sed -i 's/aspect_ratio_index = "22"/aspect_ratio_index = "23"/' /opt/retropie/configs/*/retroarch*.cfg
    echo done.
fi
