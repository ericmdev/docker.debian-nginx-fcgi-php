# Build the image.
.PHONY: build
build:
	docker build -t nginx-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop nginx-container
	docker rm nginx-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm nginx-image

# Remove all containers and images.
.PHONY: clean-all
clean-all:
	-docker stop `docker ps -a -q`
	-docker rm --force `docker ps -qa`
	-docker rmi --force `docker images -q`

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the interactive container.
.PHONY: run
run:
	docker run -d --name nginx-container -p 8888:80 nginx-image
	
# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it nginx-container bash