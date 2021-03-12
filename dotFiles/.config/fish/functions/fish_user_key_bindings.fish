# Defined in /tmp/fish.uKJYUx/fish_user_key_bindings.fish @ line 2
function fish_user_key_bindings
	bind -M insert ! bind_bang
  bind -M insert \ea bind_alarm
  bind -M insert \es bind_sudo
  for mode in insert default visual
    bind -M $mode \cf forward-char
  end
end
