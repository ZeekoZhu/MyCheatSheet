# Defined in /tmp/fish.glcVUG/set_proxy.fish @ line 2
function set_proxy
	set proxy "http://localhost:8001"
  set -lx HTTP_PROXY $proxy
  set -lx HTTPS_PROXY $proxy
  $argv
end
