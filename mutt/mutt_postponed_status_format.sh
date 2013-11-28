#!/bin/sh

# Inserts a count of the messages in mstmpq's outbound queue into the
#  mutt status_format bar.
#
# Use in the following way:
# set status_format = "/Users/esteele/.mutt/mutt_postponed_status_format.sh '───[ Folder: %f ]───[%r%m messages%?n? (%n new)?%?d? (%d to delete)?%?t? (%t tagged)? ]───( _ outbound messages queued )───%>─%?p?( %p postponed )?───'|"
#
queued_count=$(/bin/ls -1 ${HOME}/.msmtp.queue/ 2>/dev/null | grep -c "mail$")
echo $1 | sed "s/_/$queued_count/"
