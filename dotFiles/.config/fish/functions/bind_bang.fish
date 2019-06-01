# Defined in /tmp/fish.slnOQ6/fish_user_key_bindings.fish @ line 1
function bind_bang
	switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end
