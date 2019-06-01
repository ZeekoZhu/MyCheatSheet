# Defined in /tmp/fish.SNgcST/alarm.fish @ line 2
function alarm
	eval $argv
  notify-send "DONE" (string escape -n (string join ' ' $argv))
end
