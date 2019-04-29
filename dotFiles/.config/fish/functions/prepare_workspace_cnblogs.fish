#!/usr/bin/fish
function prepare_workspace_cnblogs
  prepare_workspace
  stls docker
  set pwd (pwd)
  cd ~/Projects/AppData/dev-env
  docker-compose up -d
  sleep 3
  pm2 start *.sh
  cd $pwd
end
