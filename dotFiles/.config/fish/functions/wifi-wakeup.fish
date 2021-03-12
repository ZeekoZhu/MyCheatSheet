# Defined in /tmp/fish.DYTKBO/wifi-wakeup.fish @ line 1
function wifi-wakeup
	sudo modprobe -r brcmfmac;sudo modprobe brcmfmac
end
