# Defined in /tmp/fish.Gn5DmZ/dvm.fish @ line 2
function dvm
	
  set sdks (find $DOTNET_HOME -maxdepth 1 -mindepth 1 -type d | xargs -I {} basename {} | grep -Pe '\d.\d')
  if test $argv[1] = "ls"
    for i in $sdks
      echo $i
    end
  end
  if test $argv[1] = "use"
    set index $argv[2]
    rm $DOTNET_HOME/current
    ln -s $DOTNET_HOME/$sdks[$index] $DOTNET_HOME/current
  end
end
