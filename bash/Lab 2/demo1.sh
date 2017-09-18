#!/bin/bash
# This is a script to practice variables

export MYNAME="Blake"
mytitle="Ruler"
# old command from first demo
#     echo "mytitle $MYNAME"

weekday=$(date +%A)
myhostname=$(hostname)

cat <<EOF
Welcome to planet $myhostname, $mytitle $MYNAME!
Today is $weekday
EOF
