#!/usr/bin/fish

function save_as_ln
  set file (realpath $argv[1])
  set targetDir (realpath $argv[2])
  set fileName (basename $file)
  set targetFile $targetDir"/"$fileName
  cp $file $targetFile
  mv $file $file".moved"
  ln -s $targetFile $file
end
