if [[ $# -eq 0 ]] ; then
    echo 'You must specify a bmfiddle CANVASID'
    exit 0
fi

CANVASID="$1"

mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 1of10" $( printf -- '-a %q ' folder1/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 2of10" $( printf -- '-a %q ' folder2/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 3of10" $( printf -- '-a %q ' folder3/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 4of10" $( printf -- '-a %q ' folder4/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 5of10" $( printf -- '-a %q ' folder5/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 6of10" $( printf -- '-a %q ' folder6/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 7of10" $( printf -- '-a %q ' folder7/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 8of10" $( printf -- '-a %q ' folder8/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 9of10" $( printf -- '-a %q ' folder9/*.png )
mutt $CANVASID@canvas.bmfiddle.com -s "PNGs 10of10" $( printf -- '-a %q ' folder10/*.png )

