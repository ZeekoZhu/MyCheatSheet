#!/usr/bin/fish
function copy_mime_content
  if test 1 -eq (echo $argv | grep -c "^file://.*\$")
    set path (string sub -s 8 $argv)
  else
    set path $argv
  end
  set mime (file -b --mime-type $path)
  cat $path | xclip -i -selection clipboard -target $mime
end
