#!/bin/bash
#
# bmfiddle_resource_mailer.sh located in:
# nathanharrington.github.io/content/images/learning/bmfiddle_icons/uniicons
#
# Assumes a fully functional mutt configuration.
#
# Usage: cd to the directory above (with all the folder? entires)
#
# run the script lke: ./bmfiddle_resource_mailer.sh CANVASID
#
if [[ $# -eq 0 ]] ; then
    echo 'You must specify a bmfiddle CANVASID'
    exit 0
fi

CANVASID="$1"
EMAIL=$CANVASID@canvas.bmfiddle.com

COUNTER=1
while [ $COUNTER -lt 11 ]; do
    echo "Mail folder$COUNTER group"

    FILES=$( printf -- '-a %q ' folder${COUNTER}/*.png )

    mutt $EMAIL -s 'PNGs ${COUNTER} of 10' $FILES < /dev/null

    # Change intervals for primitive spam avoidance
    sleep $COUNTER

    let COUNTER=COUNTER+1
done
