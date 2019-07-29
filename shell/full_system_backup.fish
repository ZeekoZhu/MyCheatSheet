#!/usr/bin/fish
function full_system_backup
  if test -d "$argv[1]"; and test -n "$argv[1]"
    rsync -aAXH --inplace --info=progress2 --delete --exclude={"/swapfile","/var/log/journal/*","/dev/*","/proc/*", "/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*/.nuget/*", "/home/*/.cache/*", "/home/*/OneDrive/*", "/var/cache/pacman/pkg/*"} / $argv
  else
    echo "Invalid backup destination"
  end
end

full_system_backup $argv

