@reboot cd ~/.miscellaneous && sh kill.sh > /dev/null 2>&1
@hourly find ~/ -name ".DS_Store" -depth -exec rm {} \; > /dev/null 2>&1
