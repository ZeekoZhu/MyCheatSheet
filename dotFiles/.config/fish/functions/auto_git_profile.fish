# Defined in /tmp/fish.X7r7zi/auto_git_profile.fish @ line 2
function auto_git_profile
	if git rev-parse --is-inside-work-tree > /dev/null; and set -l origin (git remote get-url origin 2>&1)
    if string match -i '*gitlab.cnblogs.com*'
      git_profile work
      echo 'Git profile changed to "work"'
    else if string match -i '*zeeko*'
      git_profile zeeko
      echo 'Git profile changed to "zeeko"'
    end
  end
end
