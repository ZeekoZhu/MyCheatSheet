#!/usr/bin/fish

function dvm
  # find installed sdks
  set sdks (find $DOTNET_ROOT/installed/sdk/ -maxdepth 1 -mindepth 1 | xargs -I {} basename {})
  if test $argv[1] = "ls"
    for i in $sdks
      echo $i
    end
  end
  if test $argv[1] = "use"
    set index $argv[2]
    sudo rm -rf $DOTNET_ROOT/sdk/*
    sudo ln -s $DOTNET_ROOT/installed/sdk/$sdks[$index] $DOTNET_ROOT/sdk/$sdks[$index]
    set -gx MSBuildSDKsPath $DOTNET_ROOT/sdk/$sdks[$index]
  end

end

