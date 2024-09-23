image-build:
	docker build -t aan-kirito:latest . 

docker-push:
	docker tag aan-kirito:latest antonykunaifi/aan-kirito:latest && docker push antonykunaifi/aan-kirito:latest

docker-run:
	docker run -d -p 8080:8080 --name aan-kirito-test aan-kirito

delete-container:
	docker rm aan-kirito-test

docker-exec:
	docker exec -it aan-kirito-test /bin/sh

docker-stop:
	docker stop aan-kirito-test

kind-load-image:
	kind load docker-image aan-kirito:0.1 -n kirito-cluster

initiate-host:
	[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64 && chmod +x ./kind && chmod +x ./kind && sudo mv ./kind /usr/local/bin/kind


