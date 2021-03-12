# Defined in /tmp/fish.WFBJhr/roll-cnt.fish @ line 2
function roll-cnt
	echo 从 (awk 'NR==1{print $1 " " $2;}' /var/log/pacman.log) 共滚了 (grep -c 'starting full system upgrade' /var/log/pacman.log) 次
end
