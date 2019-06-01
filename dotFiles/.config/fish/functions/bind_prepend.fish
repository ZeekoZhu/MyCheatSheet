function bind_prepend
  set cmd (commandline)
  commandline -r -- $argv' '$cmd
end
