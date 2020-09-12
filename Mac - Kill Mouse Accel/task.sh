PATH=/usr/local/bin:/usr/bin:/bin

# Kill mouse acceleration and update node and brew libraries
@reboot cd ~/.miscellaneous && sh kill.sh > /dev/null 2>&1
0 15 * * * cd ~/.miscellaneous && sh update_node.sh > ~/.miscellaneous/output.log 2>&1
0 15 * * * cd ~/.miscellaneous && sh update_brew.sh >> ~/.miscellaneous/output.log 2>&1

# Find and delete .DS_Store
@hourly find ~/ -name ".DS_Store" -depth -exec rm {} \; > /dev/null 2>&1

# Truncate Sync Settings logs
@reboot rm -rf ~/.sync_settings/sync.log > /dev/null 2>&1


