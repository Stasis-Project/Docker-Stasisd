def:
	docker build -t "StasisGaming/Stasis-Core" .

run:
	docker run -v `pwd`/stasis-data:/root/.Stasis -w /Stasis-Core/src -i -t StasisGaming/Stasis-Core bash

push:
	docker push "StasisGaming/Stasis-Core"
