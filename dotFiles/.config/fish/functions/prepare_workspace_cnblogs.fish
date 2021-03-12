# Defined in /tmp/fish.zKcmXL/prepare_workspace_cnblogs.fish @ line 2
function prepare_workspace_cnblogs
	prepare_workspace
  stls docker
  w2 start
  set pwd (pwd)
  cd ~/Projects/AppData/dev-env
  docker-compose up -d
  sleep 3
  pm2 start *.sh
  cd $pwd
end
