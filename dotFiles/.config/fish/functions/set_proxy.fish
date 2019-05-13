#!/usr/bin/fish

function set_proxy
  set proxy "http://localhost:8001"
  env HTTP_PROXY=$proxy HTTPS_PROXY=$proxy $argv
end
