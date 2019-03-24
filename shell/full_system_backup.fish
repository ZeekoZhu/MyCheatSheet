#!/usr/bin/fish
rsync -aAXH --inplace --info=progress2 --delete --exclude={"/swapfile","/dev/*","/proc/*", "/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*/.nuget/*", "/home/*/.cache/*"} / $argv

