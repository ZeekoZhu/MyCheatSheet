# Defined in /tmp/fish.M9UiM8/alarm.fish @ line 2
function alarm
	eval $argv
  notify-send "DONE" (string escape -n -- (string join -- ' ' $argv))
end
