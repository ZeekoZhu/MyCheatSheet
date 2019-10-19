# Defined in /tmp/fish.Um2NVt/cd_git_profile_hook.fish @ line 1
function cd_git_profile_hook --on-variable PWD
	auto_git_profile > /dev/null 2>&1
end
