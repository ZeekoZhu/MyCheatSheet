# Defined in /tmp/fish.QtDir9/roll-tools.fish @ line 2
function roll-tools
	echo Upgrade dotnet global tools
	for line in (dotnet tool list -g | tail -n +3)
      dotnet tool update -g (echo $line | awk '{ print $1 }')
  end
  echo Upgrade npm global tools
  npm up -g
end
