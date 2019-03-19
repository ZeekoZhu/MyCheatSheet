function g
    set dest (bookmarks get -n $argv)
    if test $status -eq 0
      cd $dest
    else
      echo $dest
    end
end
