#!/usr/bin/fish

set excludeList '
/swapfile
/var/lib/systemd/coredump/*
/var/log/journal/*
/dev/*
/proc/*
/sys/*
/tmp/*
/run/*
/mnt/*
/media/*
/lost+found
/home/*/.nuget/*
/home/*/.cache/*
/home/*/.local/share/Trash/*
/var/cache/pacman/pkg/*
**/*/node_modules/*
'

function full_system_backup
  if test -d "$argv[1]"; and test -n "$argv[1]"
    echo $excludeList | sudo rsync -aAXH --inplace --info=progress2 --delete --exclude-from=- / $argv
  else
    echo "Invalid backup destination"
  end
end

full_system_backup $argv

