#!/usr/bin/fish
set DT_WORKSPACE "$HOME/Pictures/Darktable Workspace/"

function dt_sync
  set -l cmd $argv[1]
  if set -q -- argv[2]; and test $argv[2] = '-d'
    set dry_run '--dry-run'
  end
  echo $dry_run
  if test $cmd = 'pull'
    rclone sync onedrive:/图片/Darktable/ $DT_WORKSPACE -P $dry_run
  end
  if test $cmd = 'push'
    rclone sync $DT_WORKSPACE onedrive:/图片/Darktable/ -P $dry_run
  end
end

