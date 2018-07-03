pjName := imgToBase64

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3080:80 \
		-p 3088:8080 \
		-p 3030:3000 \
		-p 4000:4000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash

in:
	docker exec \
		-ti \
		${pjName} \
		/bin/bash

deploy:
	docker run -d \
		--name ${pjName} \
		--restart=always \
		-p 4000:4000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash -lc "cd /root/${pjName}; yarn dev"
