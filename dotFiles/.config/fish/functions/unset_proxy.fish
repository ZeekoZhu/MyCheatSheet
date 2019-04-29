#!/usr/bin/fish

function unset_proxy
  set local_proxy $HTTP_PROXY
  set -e HTTP_PROXY
  set -e HTTPS_PROXY
  $argv
  set -gx HTTP_PROXY $local_proxy
  set -gx HTTPS_PROXY $local_proxy
end

