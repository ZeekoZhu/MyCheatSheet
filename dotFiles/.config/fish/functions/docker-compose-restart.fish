# Defined in /tmp/fish.Vf5YUS/docker-compose-restart.fish @ line 1
function docker-compose-restart
	docker-compose pull && docker-compose up --force-recreate -d && docker ps
end
