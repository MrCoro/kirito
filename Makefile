image-build:
	docker build -t aan-kirito .

docker-run:
	docker run -d -p 8080:8080 --name aan-kirito-test aan-kirito

delete-container:
	docker rm aan-kirito-test

docker-exec:
	docker exec -it aan-kirito-test /bin/sh

docker-stop:
	docker stop aan-kirito-test

kind-load-image:
	kind load docker-image aan-kirito:latest -n kirito-cluster