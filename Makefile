def:
	docker build -t "stasisgaming/stasis-core" .

run:
	docker run -v `pwd`/stasis-data:/root/.Stasis -w /Stasis-Core/src -i -t stasisgaming/stasis-core bash

push:
	docker push "stasisgaming/stasis-core"
